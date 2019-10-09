hyp_val <- function(x){
	x.int <- as.integer(x)
	if(x < 0 | (x - x.int != 0)){
		stop(paste(x, "is not a nonnegative integer"))
	} else {
		return(x.int)
	}
}

hyp <- function(a, n, b){
	if(n == 0){
		return(b + 1)
	} else if(b == 0){
		if(n == 1){
			return(a)
		} else if(n == 2){
			return(0)
		} else {
			return(1)
		}
	} else if(n == 1){
		return(a + b)
	} else if(n == 2){
		return(a * b)
	} else if(n == 3){
		return(a ^ b)
	} else {
		return(hyp(a, n-1, hyp(a, n, b-1)))
	}
}

hyper <- function(a, n, b){
	# validate input
	a.int <- hyp_val(a)
	n.int <- hyp_val(n)
	b.int <- hyp_val(b)

	# evaluate
	return(hyp(a.int, n.int, b.int))
}

up_arrow <- function(a, n, b){
	# validate input
	a.int <- hyp_val(a)
	n.int <- hyp_val(n)
	b.int <- hyp_val(b)

	# evaluate
	return(hyp(a.int, n.int + 2, b.int))
}
