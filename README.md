# gnuplot: Scripts for Scientific Computing.

By: **Eduardo J. Sanchez, PhD - esanchez at mail dot sdsu dot edu**

## 1. Description

A very humble and minimalistic suite of **gnuplot** scripts to visualize common
results in Scientific Computing.

I collect them here as I develop them for my own software library,
[the Mimetic Methods Toolkit (MTK)](https://github.com/ejspeiro/MTK).

## 2. Index of Scripts

The scripts are classified according to the mathematical nature of the data
they intend to plot. That is, some data is the result of a computation (computed
data), and some data is used as a reference against with to double check
results (control data).

1. 1D scalar fields.
  1. Control: 1d_scalar_field_control.gp
  2. Computed: 1d_scalar_field_computed.gp
  3. Comparison of control with computed: 1d_scalar_field_control_and_computed.gp
  4. Comparison of multiple control: 1d_scalar_fields_control.gp

2. 1D vector fields.
  1. Control: 1d_vector_field_control.gp
  2. Computed: 1d_vector_field_computed.gp

3. 2D scalar fields.
  1. Control: 2d_scalar_field_control.gp
  2. Computed: 2d_scalar_field_computed.gp
  3. Comparison of control with computed: 2d_scalar_field_control_and_computed.gp

4. 2D vector fields.
  1. Control: 2d_vector_field_control.gp

5. 3D scalar fields.
  1. Control.

6. Matrices.
  1. Sparse Matrix.

## 3. Tested with...

So far, I have tested these scripts on this architecture:

```
1. Intel(R) Core(TM) i7-4600U CPU 2.10 GHz 4096 KB of cache and a stepping of 1.
   Linux 3.16.7-29-desktop #1 SMP PREEMPT (6be6a97) x86_64 GNU/Linux
   openSUSE 13.2 (Harlequin) (x86_64)
   gnuplot 4.6 patchlevel 5
```

## 4. Contact, Support, and Credits

Feel free to contact me with suggestions or corrections:

**Eduardo J. Sanchez, PhD - eduardo.sanchez at bsc.es** - @ejspeiro

Thanks and happy viewing!
