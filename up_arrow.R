suppressPackageStartupMessages(library(bit64))

up_arrow <- function(a, n, b){

	#check for good input
	if(a < 0 | (a - as.integer64(a) != 0)){
		stop("a must be a nonnegative integer")
	}
	if(n < 0 | (n - as.integer64(n) != 0)){
		stop("Number of arrows must be a nonnegative integer")
	}
	if(b < 0 | (b - as.integer64(b) != 0)){
		stop("b must be a nonnegative integer")
	}

	# store inputs as 64-bit integers
	a.big <- as.integer64(a)
	n.big <- as.integer64(n)
	b.big <- as.integer64(b)

	#evaluate
	if(n.big == 0){
		return(a.big*b.big)
	} else if(b.big == 0){
		return(1)
	} else {
		return(up_arrow(a.big, n.big - 1, up_arrow(a.big, n.big, b.big-1)))
	}
}
