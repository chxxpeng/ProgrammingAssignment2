
# makeCache creates a special "vector", 
# which is really a list containing a function to
# 1.set the value of the matrix
# 2.get the value of the matrix
# 3.set the value of the inverse
# 4.get the value of the inverse





## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    m = NULL
    set <- function(y) {
        x <<- y
        m <<- NULL
    }
    
    get = function() x
    setinverse = function(inverse) m <<- inverse
    getinverse = function() m
    list(set = set, get = get,
         setinverse = setinverse, 
         getinverse = getinverse)
    

}


# The following function calculates the inverse of the special "vector" 
# created with the above function. 
# It first checks to see if the inverse has already been calculated. 
# If so, it gets the inverse from the cache and skips the computation. 
# Otherwise, it calculates the inverse of the matrix 
# and sets the value of the inverse in the cache via the setinverse function.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    m = x$getinverse()
    if(!is.null(m)){
        message("getting cathed data")
        return(m)
    }
    data = x$get()
    m = solve(data, ...)
    m
}
