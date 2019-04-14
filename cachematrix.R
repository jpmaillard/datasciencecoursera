## The two following functions will first create a special Matrix
## that can cache its inverse in memory and then calculate that inverse.
## We are assuming here (and therefore not checking it!) that
## the matrix entered will be square and that its determinant will
## be different of 0 (the two conditions needed for the matrix to be inversible).


## This function "makeCacheMatrix" create and cache a matrix object "mymat"
## object to which we will associate the attributes "theinv" that will be used
## to cache its inverse. Multiple methods will be create to call
## the matrix, its inverse (set, get, setinverse and getinverse). Finally a list
## will be created and call to store all these methods, attributes in R memory.

makeCacheMatrix <- function(mymat = matrix()) {
  theinv <- NULL
  set <- function(y) {
    mymat <<- y
    theinv <<- NULL
  }
  get <- function() mymat
  setinverse <- function(inverse) theinv <<- inverse
  getinverse <- function() theinv
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## The following function "cacheSolve" will calculate the inverse
## of the "mymat" Matrix previously used in the first function.
## If there is already a inverse been cached by previously calling these 2
## functions.

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
