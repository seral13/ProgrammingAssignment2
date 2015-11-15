## This functions can be run from the script 'main.R'

# 'makeMatrix' creates a list containing a function to
# 1. set the value of the matrix
# 2. get the value of the matrix
# 3. set the value of inverse of the matrix
# 4. get the value of inverse of the matrix

makeMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) inv <<- inverse
  getinverse <- function() inv
  list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)

}


# 'cacheSolve' returns the inverse of the matrix 'x'. First,
# it checks if the inverse already exists. If positive, it
# returns the inverse value. If negative, it computes the
# inverse and it stores the value in the cache

cacheSolve <- function(x, ...) {
        
  inv <- x$getinverse()
  if(!is.null(inv)) {
    message("getting cached data.")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data)
  x$setinverse(inv)
  inv

}
