#set term postscript portrait enhanced color "Times-Roman" 12
set terminal postscript portrait enhanced color "Times-Roman" 13
set output "MAG_time.eps"
set size 0.6, 0.3
set grid
set grid noxtics back linewidth 0.1
set border
set noy2tics
set nox2tics
set xr [2009:2016]
set yr [50:100000]  
set ytics ("50" 50, "10^2" 100, "10^3" 1000, "10^4" 10000, "10^5" 100000)
#set xtics ("2009" 2009, "2010" 2010, "2011" 2011, "2012" 2012, "2013" 2013, "2014" 2014, "2015" 2015,  "2016" 2016)
#set xtics ("2008\n(0.12)" 2008, "2009\n(0.25)" 2009, "2010\n(0.39)" 2010, "2011\n(0.55)" 2011, "2012\n(0.73)" 2012, "2013\n(0.93)" 2013, "2014\n(1.14)" 2014, "2015\n(1.29)" 2015) 
#set x2tics ("" 2.5, "" 7.5, "" 12.5,"" 17.5) 
#set ytics scale 0.05
#set logscale x
set logscale y
set ylabel "time (sec.)"
set xlabel "splitting year"
set key horizontal samplen 2.5 spacing 1.4 at graph 0.92, 0.8
#set key horizontal font ",13" 
plot "MAG_time.tab" using ($1):($2) title 'FRank' with linespoints linetype 1 pointtype 2 lc rgb "green" lw 3,\
"MAG_time_error.tab" using ($1):($2) title '' with linespoints linetype 0 pointtype 4 lc rgb "red" lw 5,\
"MAG_time.tab" using ($1):($6) title 'HRank' with linespoints linetype 1 pointtype 4 lc rgb "blue" lw 3,\
"MAG_time.tab" using ($1):($5) title 'incERank' with linespoints linetype 1 pointtype 3 lc rgb "orchid4" lw 3,\
"MAG_time.tab" using ($1):($3) title 'batERank' with linespoints linetype 1 pointtype 6 lc 7 lw 3,\
"MAG_time.tab" using ($1):($4) title 'powERank' with linespoints linetype 1 pointtype 12 lc rgb "olive" lw 3
