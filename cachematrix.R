## The next functions gives you the inverse of a matrix and since it has been already calculate if cache the inverse matrix

## This set the first calculations from where cached data is taken

makeCacheMatrix <- function(x = matrix()) {
  m<- matrix()
  set<- function(y){
    x<<- y
    m<<- matrix()
  }

  get<- function() x
  setinverse <- function(solve) m<<-solve
  getinverse <- function() m
  list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)

}



## Solve the problem of time taken to calculations and cache the inverse of a matrix

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  
  m<- x$getinverse()
  if(!is.null(m)){
    message ("getting the inverse ofmatrix within cached data")
    return(m)
  }
  data<- x$get()
  m<- solve(data,...)
  x$setinverse(m)
  m
  
}
