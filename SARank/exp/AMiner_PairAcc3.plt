#set term postscript portrait enhanced color "Times-Roman" 12
set terminal postscript portrait enhanced color "Times-Roman" 14
set output "AMiner_PairAcc3.eps"
set size 0.6, 0.3
set grid
set grid noxtics back linewidth 0.1
set border
set noy2tics
set nox2tics
set xr [0:6]
set yr [0.65:1]  
set ytics ("0.65" 0.65, "0.72" 0.72, "0.79" 0.79, "0.86" 0.86, "0.93" 0.93, "1.0" 1)
set xtics ("1" 0, "2" 1, "3" 2, "4" 3, "5" 4, "6" 5, "7" 6) 
#set x2tics ("" 2.5, "" 7.5, "" 12.5,"" 17.5) 
#set ytics scale 0.05
#set logscale x
#set logscale y
set ylabel "PairAcc" offset 1
set xlabel "least difference of future citation counts"

set key horizontal samplen 2.0 spacing 1.2 at graph 0.97, 0.3
#set key horizontal font ",13" 
plot "AMiner_PairAcc3.tab" using ($1):($5) title 'ERank' with linespoints linetype 1 pointtype 6 lc 7 lw 3,\
"AMiner_PairAcc3.tab" using ($1):($4) title 'HRank' with linespoints linetype 1 pointtype 4 lc rgb "blue" lw 3,\
"AMiner_PairAcc3.tab" using ($1):($3) title 'FRank' with linespoints linetype 1 pointtype 2 lc rgb "green" lw 3,\
"AMiner_PairAcc3.tab" using ($1):($2) title 'PRank' with linespoints linetype 1 pointtype 1 lc 1 lw 3

