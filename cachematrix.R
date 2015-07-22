## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    i <- NULL
    setMatrix <- function(y) {
        x <<- y
        i <<- NULL
    }
    getMatrix <- function() x
    setInverse <- function(inv) i <<- inv
    getInverse <- function() i
    list(
        setMatrix = setMatrix,
        getMatrix = getMatrix,
        setinverse = setInverse,
        getinverse = getInverse
    )
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
## Return a matrix that is the inverse of 'x'
i <- x$getinverse()

    if(!is.null(i)) {
        message("getting cached data")
        return(i)
    }

    m <- x$get()
    i <- solve(m, ...)
    x$setinverse(i)
    i        
}
