R Hyperoperation Sequence
=============================

An R implementation of the [hyperoperation sequence](https://en.wikipedia.org/wiki/Hyperoperation) and [Knuth's up-arrow notation](https://en.wikipedia.org/wiki/Knuth%27s_up-arrow_notation).

## Contents

The R script [up_arrow.R](up_arrow.R) defines a function `hyper(a, n, b)` = ![H_n(a, b)](https://latex.codecogs.com/gif.latex?H_n(a,&space;b)), where `a`, `n`, and `b` are nonnegative integers and ![H_n](https://latex.codecogs.com/gif.latex?H_n) is the ![n](https://latex.codecogs.com/gif.latex?n)th [hyperoperation](https://en.wikipedia.org/wiki/Hyperoperation).

We also define a function `up_arrow(a, n, b)` = ![a \uparrow^n b](https://latex.codecogs.com/gif.latex?a%20%5Cuparrow%5En%20b), where `a`, `n`, and `b` are nonnegative integers.
This is trivial, since we have ![a \uparrow^{n} b](https://latex.codecogs.com/gif.latex?a&space;\uparrow^{n}&space;b) = ![H_{n+2}(a, b)](https://latex.codecogs.com/gif.latex?H_{n+2}(a,&space;b)) for all nonnegative integers `a`, `b`, and `n`.

## Note

This is more for fun than for practical use; the value of `hyper(a, n, b)` is too large (for `a` > 1, `n` > 3, and `b` > 0) to be represented by `integer` objects for all but the smallest values of `a`, `n`, and `b` (see [here](https://en.wikipedia.org/wiki/Knuth%27s_up-arrow_notation#Tables_of_values)).
