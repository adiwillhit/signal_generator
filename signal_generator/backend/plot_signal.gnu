set terminal pngcairo size 1200,600 enhanced font 'Arial,12'
set output 'signal_plot.png'
set title 'AMI with B8ZS Encoding\nData: 00000000111111110111011011000100' font 'Arial,14'
set xlabel 'Time (bit periods)'
set ylabel 'Signal Level'
set xrange [0:32]
set yrange [-1.5:1.5]
set ytics -1,0.5,1
set grid
set style line 1 lc rgb '#0060ad' lt 1 lw 3
plot 'plot_data.txt' with steps ls 1 title 'Digital Signal'
