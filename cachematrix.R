## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
m <- NULL
set <- function(y){
x <<-y
m <<-NULL
}
get <- function()x
setmatrix <- function(solve) m <<- solve  
getmatrix <-function() m 
list(set=set, get=get, 
        setmatrix=setmatrix,
        getmatrix=getmatrix) ##return a list for named values where values are the functions defined
}
## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) { ## this function creates the cache for the inverse.
  m <- NULL 
  set <- function(y){
    x<<-y
    m<<-NULL
  }
  get<- function()x
  setmatrix <- function(solve) m <<- solve ## 
  getmatrix <-function() m 
  list(set=set, get=get, 
       setmatrix=setmatrix,
       getmatrix=getmatrix) 
}


## Write a short comment describing this function
## Return a matrix that is the inverse of 'x'

cacheSolve <- function(x=matix(), ...) { ## this function computes, caches and returns matrix inverse
  m <- x$getmatrix() ## gets the inverse if already in cache
  if(!is.null(m)){ ## if present, gets it and displays.
    message("getting cached data")
    return(m) ## dispaly the cache matrix
  }
  matrix <-x$get() ## gets the original matrix 
  m <- solve(matrix, ...) ## computer the inverse.
  x$setmatrix(m) ## set the cache matrix
  m ## display the computed matrix
}

