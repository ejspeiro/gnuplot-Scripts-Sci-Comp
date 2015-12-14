# \file 2d_scalar_field_control_and_computed.gp
#
# \brief 2D scalar fields that are computed and compared against control.
#
# When a 2D scalar field is computed, and data from a control field is
# available, use this script to plot both.
#
# \warning Not intended to be a general solution but a minimal guidance.
#
# \author: Eduardo J. Sanchez (ejspeiro) - esanchez at mail dot sdsu dot edu

# The MIT License (MIT)
#
# Copyright (c) 2015 Eduardo Sanchez
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

dat_file_name = "2d_scalar_field_control_and_computed"
control_dat_file_name = "2d_scalar_field_control"
computed_dat_file_name = "2d_scalar_field_computed"

# Terminals.
# wxt terminal (wxWidgets library) for live rendering.
set terminal wxt size 1024,768 enhanced font 'Verdana,10' persist

# png terminal for disk storage.
# set terminal png
# set output dat_file_name.".png"

# epslatex terminal for publication. (Proportions: 1024/768).
# set terminal epslatex standalone size 13cm,9.75cm color colortext 10
# set output dat_file_name.".tex"

set termoption dash

# Data visualization.
# View as a 2D map:
# set view map
# View as a 3D surface where z = u(x,y):
set view 66,16
# Style 1 for analytic/control data.
set style line 1 lt 2 lc rgb 'black' lw 1 pt 7 ps 0.5
# Style 2 for computed data.
set style line 2 lt 2 lc rgb 'black' lw 1 pt 7 ps 1
set palette defined (0 '#0000ff', 1 '#00ff00', 2 '#ff0000')

# Axes.
set autoscale fix
set grid
set format '$%g$'
set xlabel "$x$"
set x2tics
set ylabel "$y$"
set y2tics
set ticslevel 0
set zlabel "$u(x,y)$"

# Title and legend.
set title "Control and Computed Solution"
set key bmargin center horizontal

# View coordinates of the centers:
splot control_dat_file_name.".dat" u 1:2:3:xticlabels(1):yticlabels(2) \
  w lp ls 1 palette, \
  computed_dat_file_name.".dat" u 1:2:3:xticlabels(1):yticlabels(2) \
  w p ls 2 palette

# Uncomment next line to view coordinates of the cell edges of the grid instead:
splot control_dat_file_name.".dat" u 1:2:3 w lp ls 1 palette, \
  computed_dat_file_name.".dat" u 1:2:3 w p ls 2 palette
