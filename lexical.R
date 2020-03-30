makeCacheMatrix<-function(x=matrix()){
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
        i <- x$getinvert()
        if(!is.null(i)) {
                message("getting cached data")
                return(i)
        }
        data <- x$get()
        i <- solve(data, ...)
        x$setinvert(i)
        i
}