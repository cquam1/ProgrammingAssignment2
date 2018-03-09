## Put comments here that give an overall description of what your
## functions do

## make matrix object to store inverse

makeCacheMatrix <- function(x = matrix()) {

  # initialize the inverse
  
  inv <- NULL
  # setter not necessary 
  get <- function() x
  setinv <- function(matinv) inv <<- matinv
  getinv <- function() inv
  
  list(get = get, setinv = setinv, getinv = getinv)
  
}


## pull inverse from cache, or calculate then cache inverse

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
  inv <- x$getinv()
  if(!is.null(inv))
  {
    message("cache rules everything around me")
    return(inv)
    
  }
  
  data <- x$get()
  inv <- solve(data)
  x$setinv(inv)
  message("depositing some cache, see what i did there")
  inv
  
  
}
