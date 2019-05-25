#makeCacheMatrix will create a matrix for the input given

makeCacheMatrix <- function(x = matrix()) {
	inverse <- NULL
	getMatrix <- function(){
		x
	}
	setInverse <- function(solve){
		inverse <<- solve
	}
	getInverse <- function(){
	inverse
	}
	list(getMatrix = getMatrix,setInverse = setInverse,getInverse = getInverse)
}


#cacheSolve will return inverse of matrix.If already that matrix was stored in makeCacheMatrix it will return inverse from cache and it won't calculate again.

cacheSolve <- function(x) {
	inverse <- x$getInverse()
	if(!is.null(inverse)){
	print("Getting inverse from cached data")
	return(inverse)
	}
	data <- x$getMatrix
	inverse <- solve(data)
	setInverse(inverse)
	inverse
}