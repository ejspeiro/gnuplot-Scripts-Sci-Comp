# \file sparse_matrix.gp
#
# \brief Plots data from a sparse matrix.
#
# Use this script when building sparse matrices, to check their sparsity
# pattern.
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

dat_file_name = "sparse_matrix"

# ----- Terminal setup.
# Set wxt terminal (wxWidgets library) for live rendering.
set terminal wxt size 1024,768 enhanced font 'Verdana,10' persist

# Set png terminal for disk storage.
# set terminal png
# set output dat_file_name.".png"

# Set epslatex terminal for publication.
# set terminal epslatex standalone size 13cm,9.75cm color colortext 10
# set output dat_file_name.".tex"

set termoption dash

# ----- Data manipulation setup.
tol = 0.0000001

f(x) = abs(x - 0.0) > tol? 100: 0.0

# ----- Data visualization setup.
set palette defined (0 '#ffffff', 1 '#000000')

unset colorbox

# ----- Axis setup.
set autoscale fix
set grid
set xlabel "Column"
set x2tics
set ylabel "Row"
set yrange [] reverse

# ----- Title and legend setup.
set title "A sparse matrix"
unset key

# ----- Plot!
plot dat_file_name.".dat" u 2:1:(f($3))  w p pt 5 ps 1.0 palette
