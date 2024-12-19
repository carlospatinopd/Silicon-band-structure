set output 'band_structure.png'  

unset key  
set origin 0, 0  
set size 1, 1  
set ylabel "Energy (eV)"  
set xrange [0:3.2808]  
set yrange [-13:6] 
set title "Silicon Band Structure" font "bold,20" offset 0,-1.5
set xtics ("L" 0.0000, "Γ" 0.87, "X" 1.865, "U,K" 2.3, "Γ" 3.2808) font ",14" 
set grid xtics lt -1 lw 1.0  
set arrow from 0,0 to 3.2808,0 nohead
set arrow from 0,0.4625 to 3.2808,0.4625 nohead
plot 'Si_bands.dat.gnu' using 1:($2-6.172) with lines lw 2 

