## In the following program creates a object called matrix. matrix can cache its inverse. 
##This is done in 4 stages. first stage sets the matrix, 2nd stage gets the matrix, third stage 
##will set the inverse of the matrix and the last stage gets the inversed matrix.

makeCacheMatrix<-function(mtx=matrix())
{
  inv<-NULL
  set<-function(x)
  {
    mtx<<-x
    inv<<-NULL
    
  }
  get <-function() mtx
  setinverse<-function(inverse) inv<<-inverse
  getinverse<-function() inv
  list(set =set,get=get,setinverse=setinverse,getinverse = getinverse)
}

## If the inverse already exists, the program gets the result from cache. If it doesn't exist
## in cache the program computes the inverse using the above function


cacheSolve <-function(mtx,...)
{
  inv=mtx$getinverse()
  if(!is.null(inv))
  {
    message("Data from cache")
    return(inv)
    
    
  }
  message("Caching for first time")
data <-mtx$get()
inv<-solve(data)
mtx$setinverse(inv)
inv
  
  }