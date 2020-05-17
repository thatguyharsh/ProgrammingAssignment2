## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inver <- NULL                             ## inverse matrix holder 
  sets <- function(y) {                    ##define sets function
    x <<- y                            
    inver <<- NULL                        ## if new matrix -> reset inver to NULL
  }
  gets <- function() x                     ## define gets fucntion
  
  setinverse <- function(inverse) inver <<- inverse  ## assigns value of inver in parent environment
  getinverse <- function() inver                     ## gets the value of inver where called
  list(sets = sets, gets = gets, setinverse = setinverse, getinverse = getinverse)  
  
  

}



## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  inver <- x$getinverse()
  if(!is.null(inv)) {
    message("getting cached data")
    return(inver)
  }
  data <- x$gets()
  inver <- solve(data, ...)
  x$setinverse(inv)
  inver
        ## Return a matrix that is the inverse of 'x'
}
