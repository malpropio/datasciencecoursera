## Put comments here that give an overall description of what your
## functions do

## function constructs a list of function and caches the inverse a matrix.

makeCacheMatrix <- function(x = matrix()) {
  inverse_m <-NULL
  
  get <- function() x
  setinverse<-function(inverse) inverse_m<<-inverse
  getinverse<-function() inverse_m
  
  list(get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## function that calculates the inverse of a matrix and caches that value in a "makeCacheMatrix"

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  inverse<-x$getinverse()
  if(!is.null(inverse)) {
    message("returning cache data")
    return(inverse)
  }
  
  matrix<-x$get()
  inverse<-solve(matrix)  
  x$setinverse(inverse)
  inverse
}
