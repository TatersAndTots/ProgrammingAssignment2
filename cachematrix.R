#These two functions, combined, finds the inverse of an invertible
#matrix with the solve() function, caches that value, then prints 
#that value. If the inverse is already in the cache, then the inverse 
#isn't solved and the cached inverse is printed right away without
#computation, to save proccessing power and time.

## This function does the same four things as the makeVector example.
#Four functions set the matrix, retrieve it (get), set the inverse
#and caches it, and finally retrieves the inverse.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}


makeCacheMatrix <- function(x = matrix()) {
            m <- NULL
            set <- function(y) {
                    x <<- y
                    m <<- NULL
            }
            get <- function() x
            setinver <- function(solve) m <<- solve
            getinver <- function() m
            list(set = set, get = get,
                 setinver = setinver,
                 getinver = getinver)
    }

#This second function checks to see if m is non-null, ie the function
#ran previously and cached a value, and then either prints m if it is
#or finds the inverse if it isn't

CacheSolve <- function(x, ...) {
            m <- x$getinver()
            if(!is.null(m)) {
                    message("getting cached data")
                    return(m)
            }
            data <- x$get()
            m <- solve(data, ...)
            x$setinver(m)
            m
    }