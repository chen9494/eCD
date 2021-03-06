#set term postscript portrait enhanced color "Times-Roman" 12
set terminal postscript portrait enhanced color "Times-Roman" 14
set output "AAN_PairAcc2.eps"
set size 0.6, 0.3
set grid
set grid noxtics back linewidth 0.1
set border
set noy2tics
set nox2tics
set xr [1:6]
set yr [0.1:0.85]  
set ytics ("0.10" 0.1, "0.25" 0.25, "0.40" 0.4, "0.55" 0.55, "0.70" 0.7, "0.85" 0.85)
set xtics ("1" 1, "3" 2, "7" 3, "15" 4, "31" 5, "+{/Symbol \245}" 6) 
#set x2tics ("" 2.5, "" 7.5, "" 12.5,"" 17.5) 
#set ytics scale 0.05
#set logscale x
#set logscale y
set ylabel "PairAcc" offset 1
set xlabel "largest number of existing years"

set key horizontal samplen 2.0 spacing 1.2 at graph 0.97, 0.3
#set key horizontal font ",13" 
plot "AAN_PairAcc2.tab" using ($1):($2) title 'ERank' with linespoints linetype 1 pointtype 6 lc 7 lw 3,\
"AAN_PairAcc2.tab" using ($1):($5) title 'HRank' with linespoints linetype 1 pointtype 4 lc rgb "blue" lw 3,\
"AAN_PairAcc2.tab" using ($1):($3) title 'FRank' with linespoints linetype 1 pointtype 2 lc rgb "green" lw 3,\
"AAN_PairAcc2.tab" using ($1):($4) title 'PRank' with linespoints linetype 1 pointtype 1 lc 1 lw 3

