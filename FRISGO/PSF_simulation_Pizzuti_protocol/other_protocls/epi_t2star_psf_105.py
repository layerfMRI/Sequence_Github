"""
EPI T2* Point Spread Function (PSF) Simulation
================================================
Models T2* blurring along the phase-encode direction in EPI.

Parameters:
  - Echo spacing (ESP)     : 2.12 ms
  - Echo train length (ETL): 18 echoes  →  total readout = 38.16 ms
  - Gray matter T2*        : 28 ms
  - Partial Fourier factor : 6/8  (only 6/8 of k-space acquired; the
                             missing 2/8 are on the NEGATIVE k-space side,
                             i.e. early echoes are skipped)
  - k-space centre echo    : at echo index corresponding to TE_eff

The phase-encode k-space signal is modelled as:

    S(n) = exp(-|t(n)| / T2*) * exp(i * 2pi * n * y / FOV)

where t(n) = (n - n_centre) * ESP  is the time relative to the centre echo,
and y is the voxel position. The PSF is the Fourier transform of the
k-space weighting function W(n) = exp(-|t(n)| / T2*) evaluated for a
point source at y = 0 on a flat background.

For partial Fourier, only echoes n = n_start ... N-1 are acquired.
The missing lines are zero-filled (no homodyne/POCS reconstruction),
so the asymmetry directly shows up as a non-zero imaginary PSF.

Both real and imaginary parts of the complex PSF are plotted, and the
FWHM of |PSF| (magnitude) is estimated via linear interpolation.
"""

import numpy as np
import matplotlib.pyplot as plt
from scipy.interpolate import interp1d

# ── Parameters ─────────────────────────────────────────────────────────────
ESP         = 2.2e-3        # echo spacing [s]
ETL         = 50             # number of acquired phase-encode lines
T2star_GM   = 18e-3          # gray-matter T2* [s]
PF_factor   = 5 / 8         # partial Fourier factor

# Full k-space matrix size (= ETL / PF_factor)
N_total  = round(ETL / PF_factor)   # 24 lines
n_centre = N_total // 2             # k-space centre index (0-indexed)
n_start  = N_total - ETL            # first acquired line  (= 6)

print(f"N_total (full matrix) : {N_total}")
print(f"n_centre              : {n_centre}")
print(f"Acquired lines        : {n_start} ... {N_total-1}  ({ETL} lines)")
print(f"Missing lines         : 0 ... {n_start-1}  ({n_start} lines, zero-filled)")
print(f"Total readout duration: {ETL * ESP * 1e3:.2f} ms")
print(f"T2* (GM)              : {T2star_GM*1e3:.0f} ms")
print()

# ── k-space weighting W(n) ──────────────────────────────────────────────────
n_arr = np.arange(N_total)
t_arr = (n_arr - n_centre) * ESP         # time relative to centre echo [s]
decay = np.exp(-np.abs(t_arr) / T2star_GM)

W = np.zeros(N_total, dtype=complex)
W[n_start:] = decay[n_start:]           # zero-fill missing PF lines

# ── PSF via zero-padded iFFT ────────────────────────────────────────────────
oversample = 16
N_padded   = N_total * oversample
pad_centre = N_padded // 2
offset     = pad_centre - n_centre      # where to insert W into padded array

def padded_psf(weights):
    buf = np.zeros(N_padded, dtype=complex)
    buf[offset: offset + N_total] = weights
    return np.fft.ifftshift(np.fft.ifft(np.fft.ifftshift(buf)))

# Ideal: rectangular window, no T2* decay, full k-space
W_ideal = np.ones(N_total, dtype=complex)
psf_ideal_raw = padded_psf(W_ideal)
norm = np.max(np.abs(psf_ideal_raw))    # normalise everything to ideal peak

psf_ideal = psf_ideal_raw / norm

# Full k-space + T2* decay (no PF)
W_full = decay.astype(complex)
psf_full = padded_psf(W_full) / norm

# Partial Fourier + T2* decay
psf_pf = padded_psf(W) / norm

# Spatial axis [voxels]
x_vox = (np.arange(N_padded) - N_padded // 2) / oversample

# ── FWHM helpers ────────────────────────────────────────────────────────────
def fwhm(x, y):
    """FWHM of |y|  (magnitude PSF)."""
    y = np.abs(y)
    pk  = np.argmax(y)
    hm  = y[pk] / 2.0

    left = y[:pk]
    li   = np.where(left < hm)[0]
    lx   = float(interp1d(y[li[-1]:li[-1]+2], x[li[-1]:li[-1]+2])(hm)) if len(li) else x[0]

    right = y[pk:]
    ri    = np.where(right < hm)[0]
    rx    = float(interp1d(y[pk+ri[0]-1:pk+ri[0]+1], x[pk+ri[0]-1:pk+ri[0]+1])(hm)) if len(ri) else x[-1]

    return rx - lx

def fwhm_real(x, y):
    """FWHM of the real part of the PSF (positive peak only)."""
    yr  = np.real(y)
    pk  = np.argmax(yr)        # centre of the positive peak
    hm  = yr[pk] / 2.0

    left = yr[:pk]
    li   = np.where(left < hm)[0]
    lx   = float(interp1d(yr[li[-1]:li[-1]+2], x[li[-1]:li[-1]+2])(hm)) if len(li) else x[0]

    right = yr[pk:]
    ri    = np.where(right < hm)[0]
    rx    = float(interp1d(yr[pk+ri[0]-1:pk+ri[0]+1], x[pk+ri[0]-1:pk+ri[0]+1])(hm)) if len(ri) else x[-1]

    return rx - lx

# Magnitude FWHM
fw_ideal = fwhm(x_vox, psf_ideal)
fw_full  = fwhm(x_vox, psf_full)
fw_pf    = fwhm(x_vox, psf_pf)

# Real-part FWHM
fw_real_ideal = fwhm_real(x_vox, psf_ideal)
fw_real_full  = fwhm_real(x_vox, psf_full)
fw_real_pf    = fwhm_real(x_vox, psf_pf)

print(f"FWHM |PSF| – ideal                 : {fw_ideal:.3f} voxels")
print(f"FWHM |PSF| – full k-space + T2*    : {fw_full:.3f} voxels")
print(f"FWHM |PSF| – PF {PF_factor:.3f}   + T2*    : {fw_pf:.3f} voxels")
print()
print(f"FWHM Re{{PSF}} – ideal              : {fw_real_ideal:.3f} voxels")
print(f"FWHM Re{{PSF}} – full k-space + T2*: {fw_real_full:.3f} voxels")
print(f"FWHM Re{{PSF}} – PF {PF_factor:.3f}   + T2*: {fw_real_pf:.3f} voxels")

# ── Plotting ─────────────────────────────────────────────────────────────────
fig, axes = plt.subplots(2, 2, figsize=(14, 10))
fig.suptitle(
    f"EPI T2* Point Spread Function\n"
    f"ETL = {ETL}, ESP = {ESP*1e3:.2f} ms, "
    f"T2* = {T2star_GM*1e3:.0f} ms (GM), PF = {PF_factor:.3f} (6/8)",
    fontsize=13, fontweight="bold"
)
zoom = 5   # display ± voxels

# Panel 1 – k-space weighting
ax = axes[0, 0]
k_lines = np.arange(N_total) - n_centre
w_show  = np.abs(W)
ax.bar(k_lines[:n_start], np.zeros(n_start),
       color="tomato", alpha=0.9, label="Zero-filled (missing PF lines)")
ax.bar(k_lines[n_start:], w_show[n_start:],
       color="steelblue", alpha=0.85, label="Acquired (T2* decay)")
ax.axvline(0, color="k", lw=1.2, ls="--", label="k-space centre")
ax.set_xlabel("k-space line (relative to centre)")
ax.set_ylabel("|W(k)|")
ax.set_title("k-space Weighting  |W(k)|")
ax.legend(fontsize=9)
ax.grid(alpha=0.3)

# Panel 2 – Magnitude PSF
ax = axes[0, 1]
ax.plot(x_vox, np.abs(psf_ideal), "k--", lw=1.5, label=f"Ideal  (FWHM = {fw_ideal:.2f} vox)")
ax.plot(x_vox, np.abs(psf_full),  "C0",  lw=1.5, label=f"Full PF + T2*  (FWHM = {fw_full:.2f} vox)")
ax.plot(x_vox, np.abs(psf_pf),    "C1",  lw=2.0, label=f"PF 6/8 + T2*   (FWHM = {fw_pf:.2f} vox)")
ax.axhline(0.5, color="gray", lw=0.8, ls=":", label="Half-maximum")
ax.set_xlim(-zoom, zoom)
ax.set_ylim(bottom=-0.05)
ax.set_xlabel("Position [voxels]")
ax.set_ylabel("|PSF|  (normalised)")
ax.set_title("Magnitude  |PSF(x)|")
ax.legend(fontsize=9)
ax.grid(alpha=0.3)

# Panel 3 – Real part
ax = axes[1, 0]
ax.plot(x_vox, psf_ideal.real, "k--", lw=1.5, label=f"Ideal              (FWHM = {fw_real_ideal:.2f} vox)")
ax.plot(x_vox, psf_full.real,  "C0",  lw=1.5, label=f"Full k-space + T2* (FWHM = {fw_real_full:.2f} vox)")
ax.plot(x_vox, psf_pf.real,    "C1",  lw=2.0, label=f"PF 6/8 + T2*       (FWHM = {fw_real_pf:.2f} vox)")
hm_line = np.max(psf_pf.real) / 2.0
ax.axhline(0,       color="gray", lw=0.8, ls=":")
ax.axhline(hm_line, color="C1",   lw=0.8, ls=":", alpha=0.7, label=f"Half-max of Re{{PSF}} (PF 6/8)")
ax.set_xlim(-zoom, zoom)
ax.set_xlabel("Position [voxels]")
ax.set_ylabel("Re{PSF}  (normalised)")
ax.set_title("Real Part  Re{PSF(x)}\n(symmetric T2* blurring / signal leakage)")
ax.legend(fontsize=9)
ax.grid(alpha=0.3)

# Panel 4 – Imaginary part
ax = axes[1, 1]
ax.plot(x_vox, psf_ideal.imag, "k--", lw=1.5, label="Ideal  (≡ 0)")
ax.plot(x_vox, psf_full.imag,  "C0",  lw=1.5, label="Full PF + T2*  (≡ 0 by symmetry)")
ax.plot(x_vox, psf_pf.imag,    "C1",  lw=2.0, label="PF 6/8 + T2*  (asymmetric leakage)")
ax.axhline(0, color="gray", lw=0.8, ls=":")
ax.set_xlim(-zoom, zoom)
ax.set_xlabel("Position [voxels]")
ax.set_ylabel("Im{PSF}  (normalised)")
ax.set_title("Imaginary Part  Im{PSF(x)}\n(asymmetric leakage due to k-space truncation)")
ax.legend(fontsize=9)
ax.grid(alpha=0.3)

plt.tight_layout()
fig.savefig("/mnt/user-data/outputs/epi_t2star_psf.png", dpi=150, bbox_inches="tight")
print("\nFigure saved.")
plt.close()
