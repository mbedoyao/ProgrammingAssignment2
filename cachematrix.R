

## The following function receive a Matrix as input and have the 
## Functions: set,get,setinverse,getinverse

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  ## The following function set the value of the Matrix to y
  ## And reset the value of the inverse to NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  ## The following function Show the matrix value
  get <- function() x
  ## The following function set the value of the inverse to 
  ## the parameter received.
  setinverse <- function(inverse) m <<- inverse
  ## The following function Show the value of the inverse
  getinverse <- function() m
  ## Show a subset of functions
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## The next function calculate the Inverse of a matrix
## if the inverse has not been calculated before
## else show the Cache data

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getinverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinverse(m)
  m
}
