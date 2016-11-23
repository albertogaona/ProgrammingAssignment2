## Inverses a matrix and caches the inversed matrix to 
## avoid repetitive calculations

## Generars an object (a list) with for functions 
## to access the cache. The functions itself is to be
## considered a constructor.

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  ## The cached inverse matrix
  i <- NULL
  
  # Puts matrix in cache
  set <- function(mx) {
    m <<- mx
  }
  
  ##POPULATE FROM CONSTRUCTOR
  set(x)
  
  ## Fetches matrix from cache
  get <- function() { m }
  
  ## Fetches cached inverse matrix
  getInverse <- function() { 
    i 
  }
  
  ## Puts invers in cache
  setInverse <- function(inv) {
    i < inv
  }
  
  ## Returns the matrix 'object'
  list(set = set, get = get, getInverse = getInverse, setInverse = setInverse)
}


## Returns the inverse from the matrix. If the matrix is already in
## the cache it does no recalculate and just returns the value from
## the cache.
##
## x the matrix to be inversed 

cacheSolve <- function(x, ...) {
  if (is.null(x)) {
    ## Reset m:
    m <<- NULL
    i <<- NULL
    return (i)
  }
  
  if (!is.null(m) && identical(m,x)) {
      ## Matrix hasn't changed: Inverse from cache
      return (i)
  }
  m <<- x
  ## Matrix changed/new: calculate inverse
  i <<- solve(m)
  i
}
