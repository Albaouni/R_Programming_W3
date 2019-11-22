## Put comments here that give an overall description of what your
## functions do

## Create a matrix  object 

makeCacheMatrix <- function(x = matrix()) {
  x_inv <- NULL
  set <- function(y){
    x <<- y
    x_inv <<- NULL
  }
get <- function()x
setinverse <- function(inverse) x_inv <<- inverse
getinverse <- function() x_inv
list(set = set,
     get = get,
     setinverse = setinverse,
     getinverse = getinverse)
}


## computation of matrix inverse, 
##if the it has been already calculated returb by makeCache Matrix  


cacheSolve <- function(x, ...) {
  x_inv <- x$getinverse()
  if(!is.null(x_inv)){
    message("Getting cache data.")
    return(x_inv)
  }
  data <- x$get()
  x_inv <- solve(data,...)
  x$setinverse(x_inv)
  return(x_inv)
        ## Return a matrix that is the inverse of 'x'
}
