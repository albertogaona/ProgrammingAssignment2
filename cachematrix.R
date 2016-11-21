## Inverses a matrix and caches the inversed matrix to 
## avoid repetitive calculations

## Generates an object (a list) with three functions 
## to access the cache (get, set, getInverse). The functions itself is to be
## considered a constructor.

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  i <- NULL
  
  # Sets the matrix. If matrix is in cache, it does not
  # recalculate inverse
  set <- function(mx) {
    m <<- mx
    i <<- solve(mx)
  }
  
  ##Populate from constructor
  set(x)
  
  ## Gets matrix from cache
  get <- function() { m }
  
  ## Gets pre-calculated inverse matrix
  getInverse <- function() { i }
  
  ## Returns 'object'
  list(set = set, get = get, getInverse = getInverse)
}


## Returns the inverse from the matrix. If the matrix is already in
## the cache it does no recalculate and just returns the value from
## the cache.

cacheSolve <- function(x, ...) {
  x$getInverse()
}
