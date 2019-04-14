## The two folling functions that will first create a matrice and then
## calculate its inverse by caching the inverse in R memory.
## We are asuming here (and therefore not checking it!) that
## the matrix entered will be square and that its determinant will
## be different of 0.

## This function "makeCacheMatrix" create and cache a matrix

makeCacheMatrix <- function(mymat = matrix()) {
  theinv <- NULL
  set <- function(y) {
    #
    mymat <<- y
    theinv <<- NULL
  }
  get <- function() mymat
  setinverse <- function(inverse) theinv <<- inverse
  getinverse <- function() inv
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## The following fuction "cacheSolve" will calculate the inverse
## of the mymat Matrix previously used in the first function.
## the inverse will be cache and therefore reusable.

cacheSolve <- function(mymat, ...) {
        ## Return a matrix that is the inverse of 'x'
  theinv <- mymat$getinverse()
  if(!is.null(theinv)) {
    message("getting cached data")
    return(theinv)
  }
  data <- mymat$get()
  theinv <- solve(data, ...)
  mymat$setinverse(m)
  theinv
  
}
