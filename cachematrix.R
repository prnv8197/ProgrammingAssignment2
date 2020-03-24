#makeCacheMatrix() function creates an object of type makeCacheMatrix which is then passed as an argument
#to the cacheSolve() function.

## x is the matrix that we want to invert, i is the inverted matrix.

makeCacheMatrix <- function(x = matrix()) {
        inv<-NULL
        set<-function(y){
                x<<-y
                i<<-NULL
        }
        get<-function() x
        
        setinvert<-function(solve) i<<-solve
        getinvert <- function() i
        list(set = set, get = get,
             setinvert = setinvert,
             getinvert = getinvert)

}




cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        i <- x$getinvert()
        if(!is.null(i)) {
                return(i)
        }
        data <- x$get()
        i <- solve(data, ...)
        x$setinvert(i)
        i
        
}
