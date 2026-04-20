To reproduce the profile plots from the paper: 

The line 65 refers to BOLD and the line 68 refers to VASO.
If you want to plot it like Huber et al did it :

-> start gnuplot by typing "gnuplot" in the folder where the data files are
-> execute: plot "all_norm_mean.dat" u 1:($65) w lines title ""  linewidth 5 linecolor rgb "blue"
-> or execute: plot "all_norm_mean.dat" u 1:($68) w lines title ""  linewidth 5 linecolor rgb "blue"
