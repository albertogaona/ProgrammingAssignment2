## Inverses a matrix and caches the inversed matrix to 
## avoid repetitive calculations

## Generars an object (a list) with for functions 
## to access the cache. The functions itself is to be
## considered a constructor.

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  i <- NULL
  set <- function(mx) {
    m <<- mx
    i <<- solve(mx)
  }
  ##POPULATE FROM CONSTRUCTOR
  set(x)
  
  get <- function() { m }
  getInverse <- function() { i }
  list(set = set, get = get, getInverse = getInverse)
}


## Returns the inverse from the matrix. If the matrix is already in
## the cache it does no recalculate and just returns the value from
## the cache.

cacheSolve <- function(x, ...) {
  x$getInverse()
}
