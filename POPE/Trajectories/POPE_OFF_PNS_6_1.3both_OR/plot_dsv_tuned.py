"""
plot_dsv.py
-----------
Overlay plot of two Siemens DSP-Simulator DSV files:
  - SimulationProtocol_GRX.dsv   (X Gradient, mT/m)
  - SimulationProtocol_SLT.dsv   (Total PNS Stimulation Threshold, T/s)

Both share the same time axis (HORIDELTA = 10 µs per sample).
Each signal is plotted on its own y-axis (twin-axis layout) so that
very different physical units (mT/m vs T/s) are both legible.

Usage
-----
    python plot_dsv.py

Optional arguments (edit the CONFIG block below):
  - TMIN_MS / TMAX_MS : zoom to a time window in milliseconds
                        (set both to None to show the full waveform)
  - MAXPOINTS         : target number of rendered points. Uses min/max
                        decimation (keeps the true peak in every bin) so
                        that the waveform envelope is always faithfully shown
                        regardless of zoom level. Set to None to disable and
                        use DOWNSAMPLE instead.
  - DOWNSAMPLE        : used only when MAXPOINTS is None; plots every Nth sample.
  - DARK_THEME        : True for a dark background
"""

import re
import numpy as np
import matplotlib.pyplot as plt
import matplotlib.ticker as ticker

# ── CONFIG ────────────────────────────────────────────────────────────────────
GRX_PATH = "SimulationProtocol_GRX.dsv"
SLT_PATH = "SimulationProtocol_SLT.dsv"

TMIN_MS = 5028.52         # e.g. 906.0  - set to None for full trace
TMAX_MS = 5033.8         # e.g. 916.0

MAXPOINTS  = 20_000     # target rendered points; uses min/max decimation to
                        # preserve true peaks. Set to None to use DOWNSAMPLE.
DOWNSAMPLE = 1          # used only when MAXPOINTS is None (1 = all samples)
DARK_THEME = True
# ─────────────────────────────────────────────────────────────────────────────


def parse_dsv(path: str) -> dict:
    """
    Parse a Siemens DSP-Simulator DSV file.

    The [VALUES] block uses a compact delta + run-length encoding:
      - The first token is an absolute sample value.
      - Every subsequent token is a delta (difference from previous sample).
      - If the same delta appears twice in a row, the NEXT token is a repeat
        count N: the run fills N additional samples beyond the two already
        written (N=0 means no extra samples beyond the repeated pair).
      - After each run the next token is an ordinary delta (not a new run
        trigger), consumed without an extra i-increment.

    This decoder is a faithful Python translation of the MATLAB
    getGradientSound() in gradientAcousticPlus.m (Labadie/Mildner et al.).
    The key subtlety: after i+=2 (skip the count token), the post-run token
    enc[i] is read and n is advanced, but i is NOT incremented — the outer
    loop's i+=1 at the next iteration consumes it implicitly.
    """
    meta     = {}
    encoded  = []
    in_values = False

    with open(path, "r", encoding="latin-1") as fh:
        for line in fh:
            line = line.strip()
            if not line or line.startswith(";"):
                continue
            if line == "[VALUES]":
                in_values = True
                continue
            if line.startswith("[") and line.endswith("]"):
                in_values = False
                continue
            if in_values:
                encoded.append(int(line))
            elif "=" in line:
                key, _, val = line.partition("=")
                meta[key.strip()] = val.strip()

    ny          = int(meta.get("SAMPLES", len(encoded)))
    vert_factor = float(meta.get("VERTFACTOR", 1.0))
    dsv         = np.array(encoded, dtype=np.int64)
    ndsv        = len(dsv)

    y    = np.zeros(ny, dtype=np.int64)
    y[0] = dsv[0]
    prev = int(dsv[0])
    i    = 0          # pre-incremented at the top of each iteration
    n    = 0          # 0-based index of last written sample

    while i < ndsv - 1 and n < ny - 1:
        i += 1                              # MATLAB: i = i + 1
        y[n + 1] = y[n] + dsv[i]           # provisional next sample

        if dsv[i] != prev:
            n   += 1
            prev = int(dsv[i])
        else:
            nrep = int(dsv[i + 1])
            if nrep == 0:
                i += 2
                n += 1
            else:
                n += 1                      # commit the sample written above
                end   = min(n + nrep, ny - 1)
                count = end - n
                y[n + 1 : end + 1] = y[n] + np.arange(1, count + 1, dtype=np.int64) * prev
                n += nrep                   # MATLAB: n = n + nrep  (not n+1+nrep)
                i += 2

            # post-run: read one more token WITHOUT an extra i-increment;
            # the outer loop's i+=1 will advance past it next iteration.
            if i <= ndsv - 1 and n < ny - 1:
                y[n + 1] = y[n] + dsv[i]
                n       += 1
                prev     = int(dsv[i])

    values = y[:n + 1].astype(np.float64) / vert_factor

    return {
        "title":       meta.get("TITLE", path),
        "vert_unit":   meta.get("VERTUNITNAME", ""),
        "hori_unit":   meta.get("HORIUNITNAME", "us"),
        "hori_delta":  float(meta.get("HORIDELTA", 1.0)),
        "vert_factor": vert_factor,
        "max_limit":   float(meta.get("MAXLIMIT",  np.nan)),
        "min_limit":   float(meta.get("MINLIMIT",  np.nan)),
        "values":      values,
    }


def build_time_ms(n_samples: int, hori_delta_us: float) -> np.ndarray:
    """Return time axis in milliseconds."""
    return np.arange(n_samples) * hori_delta_us * 1e-3   # µs → ms


# ── LOAD ──────────────────────────────────────────────────────────────────────
print(f"Loading {GRX_PATH} …")
grx = parse_dsv(GRX_PATH)
print(f"  {len(grx['values']):,} samples  |  units: {grx['vert_unit']}")

print(f"Loading {SLT_PATH} …")
slt = parse_dsv(SLT_PATH)
print(f"  {len(slt['values']):,} samples  |  units: {slt['vert_unit']}")

# ── TIME AXIS ─────────────────────────────────────────────────────────────────
# Truncate to the shorter of the two arrays in case sample counts differ
n = min(len(grx["values"]), len(slt["values"]))
if len(grx["values"]) != len(slt["values"]):
    print(f"  ⚠  Sample count mismatch: GRX={len(grx['values']):,}  SLT={len(slt['values']):,} "
          f"— truncating to {n:,}")

g_raw = grx["values"][:n]
s_raw = slt["values"][:n]
t_ms  = build_time_ms(n, grx["hori_delta"])

# ── WINDOW + DOWNSAMPLE ───────────────────────────────────────────────────────
# -- WINDOW -------------------------------------------------------------------
mask = np.ones(n, dtype=bool)
if TMIN_MS is not None:
    mask &= t_ms >= TMIN_MS
if TMAX_MS is not None:
    mask &= t_ms <= TMAX_MS

t_win = t_ms[mask]
g_win = g_raw[mask]
s_win = s_raw[mask]

# -- DECIMATION ----------------------------------------------------------------
def minmax_decimate(t, *arrays, maxpoints=20_000):
    """
    Peak-preserving decimation: divide the trace into bins and keep the min
    and max sample from each bin.  Guarantees the plotted envelope exactly
    matches the true waveform envelope, unlike stride-based downsampling
    which can skip over narrow peaks entirely.
    """
    m = len(t)
    if maxpoints is None or m <= maxpoints:
        return (t,) + arrays

    n_bins = max(1, maxpoints // 2)
    indices = []
    for b in range(n_bins):
        i0 = int(b * m / n_bins)
        i1 = int((b + 1) * m / n_bins)
        if i0 >= m:
            break
        i1 = min(i1, m)
        # always keep the time-sorted min and max of the FIRST array in each bin
        imin = i0 + int(np.argmin(arrays[0][i0:i1]))
        imax = i0 + int(np.argmax(arrays[0][i0:i1]))
        indices.extend(sorted({imin, imax}))

    idx = np.array(indices)
    return (t[idx],) + tuple(a[idx] for a in arrays)

if MAXPOINTS is not None:
    t_ms, g_vals, s_vals = minmax_decimate(t_win, g_win, s_win, maxpoints=MAXPOINTS)
else:
    t_ms   = t_win[::DOWNSAMPLE]
    g_vals = g_win[::DOWNSAMPLE]
    s_vals = s_win[::DOWNSAMPLE]

print(f"Plotting {len(t_ms):,} points ({chr(39)}minmax{chr(39)} if MAXPOINTS else {chr(39)}stride{chr(39)}) decimation, window=[{t_win[0]:.1f}, {t_win[-1]:.1f}] ms)")

# ── STYLE ─────────────────────────────────────────────────────────────────────
if DARK_THEME:
    plt.style.use("dark_background")
    c_grx   = "#00BFFF"    # electric blue  — gradient
    c_slt   = "#FF6B35"    # warm orange    — PNS threshold
    c_limit = "#FF4444"    # red dashed     — hardware limit
    c_grid  = "#333333"
else:
    c_grx   = "#1565C0"
    c_slt   = "#E65100"
    c_limit = "#C62828"
    c_grid  = "#CCCCCC"

# ── FIGURE ────────────────────────────────────────────────────────────────────
fig, ax1 = plt.subplots(figsize=(14, 5))
ax2 = ax1.twinx()

import re as _re

def _clean_title(title: str) -> str:
    """Remove parenthesised content and trailing whitespace, e.g. 'X Gradient (GPA 0)' → 'X Gradient'."""
    return _re.sub(r'\s*\([^)]*\)', '', title).strip()

# — Gradient waveform (left axis) —
grx_label = _clean_title(grx["title"])
ax1.plot(t_ms, g_vals, color=c_grx, lw=0.8, alpha=0.9,
         drawstyle='steps-post', label=grx_label)
ax1.set_ylim(-50, 50)
ax1.set_ylabel(f'{grx_label}\n[{grx["vert_unit"]}]', color=c_grx, fontsize=10)
ax1.tick_params(axis="y", colors=c_grx)
ax1.spines["left"].set_color(c_grx)

# — PNS threshold (right axis) —
slt_label = _clean_title(slt["title"])
ax2.plot(t_ms, s_vals, color=c_slt, lw=0.8, alpha=0.85,
         drawstyle='steps-post', label=slt_label)
ax2.axhline(1.25, color="#FFAA00", lw=1.0, ls="--", alpha=0.8,
            label='PNS 1.25 threshold')
ax2.set_ylim(0, 1.5)
ax2.set_ylabel(slt_label, color=c_slt, fontsize=10)
ax2.tick_params(axis="y", colors=c_slt)
ax2.spines["right"].set_color(c_slt)

# — Shared x axis —
ax1.set_xlabel("Time [ms]", fontsize=10)
ax1.axhline(0, color="#CCCCCC", lw=1.0, ls="--", alpha=0.8)
ax1.xaxis.set_major_formatter(ticker.FuncFormatter(lambda x, _: f"{x:.0f}"))

# — Grid & labels —
ax1.grid(color=c_grid, lw=0.4, alpha=0.6)
ax1.set_title("Sequence Simulation: X Gradient Waveform & PNS Stimulation Threshold",
              fontsize=11, pad=10)

# — Combined legend —
lines1, labels1 = ax1.get_legend_handles_labels()
lines2, labels2 = ax2.get_legend_handles_labels()
ax1.legend(lines1 + lines2, labels1 + labels2,
           loc="upper right", fontsize=8,
           framealpha=0.3 if DARK_THEME else 0.8)

fig.tight_layout()
plt.savefig("dsv_overlay.svg", bbox_inches="tight")
plt.savefig("dsv_overlay.png", bbox_inches="tight")
print("\nSaved → dsv_overlay.svg")
plt.show()


