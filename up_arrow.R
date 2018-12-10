library(bit64)

up_arrow <- function(a, n.arrows, b){

	#check for good input
	if(!is.numeric(a)){
		stop("a must be a number")
	}
	if(n.arrows < 0 | (n.arrows - as.integer64(n.arrows) != 0)){
		stop("Number of arrows must be a nonnegative integer")
	}
	if(b < 0 | (b - as.integer64(b) != 0)){
		stop("b must be a nonnegative integer")
	}

	a.big <- as.integer64(a)
	n.arrows.big <- as.integer64(n.arrows)
	b.big <- as.integer64(b)

	#evaluate
	if(n.arrows.big == 0){
		return(a.big*b.big)
	} else if(b.big == 0){
		return(1)
	} else {
		return(up_arrow(a.big, n.arrows.big - 1, up_arrow(a.big, n.arrows.big, b.big-1)))
	}
}