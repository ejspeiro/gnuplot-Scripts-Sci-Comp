# \file 1d_scalar_field_control_computed.gp
#
# \brief Plots 1D scalar fields that are computed and compared against control.
#
# When a 1D scalar field is computed, and data from a control field is
# available, use this script to plot them both to compare them.
#
# \warning Not intended to be a general solution but a minimalistic guidance.
#
# \author: Eduardo J. Sanchez (ejspeiro) - eduardo.sanchez at bsc.es

# The MIT License (MIT)
#
# Copyright (c) 2016 Eduardo Sanchez
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

#!/usr/bin/gnuplot

reset

control_dat_file_name = "1d_scalar_field_control"
computed_dat_file_name = "1d_scalar_field_computed"

# ----- Terminal setup.
# Set wxt terminal (wxWidgets library) for live rendering.
set terminal wxt size 1024,768 enhanced font 'Verdana,10' persist

# Set png terminal for disk storage.
# set terminal png
# set output dat_file_name.".png"

# Set epslatex terminal for publication. (Proportions: 1024/768).
# set terminal epslatex standalone size 13cm,9.75cm color colortext 10
# set output dat_file_name.".tex"

set termoption dash

# ----- Data visualization setup.
set palette defined (0 '#0000ff', 1 '#00ff00', 2 '#ff0000')

# Style 1 for control data.
set style line 1 lt 2 lc rgb 'black' lw 1 pt 7 ps 0.5

# Style 2 for computed data.
set style line 2 lt 2 lc rgb 'black' lw 1 pt 7 ps 1

# ----- Axis setup.
# Uncomment to plot on log scale for each axis respectively:
# set logscale x
# set logscale y
# set logscale xy

set autoscale fix
set grid
set format "$%g$"
set xlabel "$x$"
set ylabel "$u(x)$"

# ----- Title and legend setup.
set title "Control and computed 1D scalar fields"
set key bmargin center horizontal

# ----- Plot!
plot \
  control_dat_file_name.".dat" u 1:2:2:xtic(1) title "Control" \
  w lp ls 1 palette, \
  computed_dat_file_name.".dat" u 1:2:2:xtic(1) title "Computed" \
  w p ls 2 palette
