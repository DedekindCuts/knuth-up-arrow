knuth-up-arrow
=============================

An R implementation of [Knuth's up-arrow notation](https://en.wikipedia.org/wiki/Knuth%27s_up-arrow_notation).

## Requirements

Requires the R package `bit64`

## Contents

The R script [up_arrow.R](up_arrow.R) defines a function `up_arrow(a, n, b)` = ![a \uparrow^n b](https://latex.codecogs.com/gif.latex?a%20%5Cuparrow%5En%20b), where `a`, `n`, and `b` are nonnegative integers.

## Note

This is more for fun than for practical use; the value of `up_arrow(a, n, b)` grows too quickly (for `a` > 1, `n` > 1, and `b` > 0) to be represented by `integer64` objects for even small values of `a`, `n`, and `b` (see [here](https://en.wikipedia.org/wiki/Knuth%27s_up-arrow_notation#Tables_of_values)).
