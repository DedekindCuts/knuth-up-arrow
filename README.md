knuth-up-arrow
=============================

An R implementation of [Knuth's up-arrow notation](https://en.wikipedia.org/wiki/Knuth%27s_up-arrow_notation).

## Requirements

Requires the R package `bit64`

## Contents

The R script [up_arrow.R](up_arrow.R) defines functions `up_arrow(a, n, b) = up_arrow64(a, n, b)` = ![a \uparrow^n b](https://latex.codecogs.com/gif.latex?a%20%5Cuparrow%5En%20b), where `a`, `n`, and `b` are nonnegative integers.
The functions `up_arrow` and `up_arrow64` are equivalent except for the fact that `up_arrow` returns `integer` objects, while `up_arrow64` returns `integer64` objects, which have a higher ceiling.
Notice for example that `up_arrow64(3, 2, 3)` correctly returns `7625597484987` while `up_arrow(3, 2, 3)` gives an error.

## Note

This is more for fun than for practical use; the value of `up_arrow(a, n, b)` is too large (for `a` > 1, `n` > 1, and `b` > 0) to be represented by `integer` or even `integer64` objects for all but the smallest values of `a`, `n`, and `b` (see [here](https://en.wikipedia.org/wiki/Knuth%27s_up-arrow_notation#Tables_of_values)).
