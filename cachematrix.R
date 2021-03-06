## Assignment 2: Create and cache the inverse of a matrix
## 02-21-2016

## Put comments here that give an overall description of what your
## functions do

## set         sets the values of the square matrix
## get         retrieves the values of the square matrix
## cacheIMX    stores the cached values of the inverse square matrix
## getIMX      retrieves the cached values of the inverse square matrix

## Write a short comment describing this function

## Defines function "makeCacheMatrix".
## "makeCacheMatrix" creates the square matrix and stores the inverse matrix in the cache
## "makeCacheMatrix" also defines "get" and "getIMX" which return the matrix and its inverse, repsectively


makeCacheMatrix <- function(x = matrix()) 
  
  {

  # "cache" contains the matrix values; "cache" = Null when the variable has no value
  cache <- NULL
  
  # "set" stores a square matrix
  set <- function(m) 
  {
    x <<- m
    
    # empty the cache after assigning a value to the matrix
    cache <<- NULL
  }
  
  # "get" returns the matrix
  get <- function() 
  {
    x
  }
  
  # "getIMX" returns the inverse matrix generated by "cacheSolve"
  getIMX <- function() 
  {
    cache
  }
  
  # "CacheIMX" stores the inverse matrix generated by "cacheSolve"
  CacheIMX <- function(solve) 
  {
    cache <<- solve
  }
  
  # returns a list of the functions
  list(set = set, get = get, CacheIMX = CacheIMX, getIMX = getIMX)
}


## Write a short comment describing this function

## "cacheSolve" calculates the inverse of the matrix

cacheSolve <- function(y, ...) 
  
  {
  
  # retrieves any values stored in the cache
  n <- y$getIMX()
  
  # returns the cached values if present
  if(!is.null(n)) 
  {
    # prints the message "getting cached data" when there is a value stored in the cache
    message("getting cached data")
    
    # returns the cached values
    return(n)
  }
  
  # if the cache is empty, calculate the inverse matrix and store the result in the cache
  # get the matrix
  values <- y$get()
  
  # solve for the inverse
  n <- solve(values)
  
  # store the inverse
  y$CacheIMX(n)
  
  # then, return the inverse matrix
  n
}
