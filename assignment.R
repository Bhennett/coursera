makecache <- function(x = matrix()){
##this is a function which creates matrix to cache
makecachematrix <- funtion(x = matrix())
inv <- NULL
set <- function(y) {
 x <<- y
 inv <<- NULL
 }
 get <- function() x
 
 setinvers <- function(inverse) inv <<- inverse
 getinverse <-function() inv
 list(set, get= get, setinverse = setinverse, getinverse = getinverse)
 }
 
 
 ##this computes the inverse of the matrix
 inv <- function(x,...){
 
 inv <-$getinverse()
 if(!is.null(inv)){
 message("getting cache data")
 return(inv)
 }
 data <- x$get()
 inv <- solve(data,...)
 x$setinverse(inv)
 inv
 }
