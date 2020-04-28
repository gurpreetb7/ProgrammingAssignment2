
## The purpose of this functio is to make a CacheMatrix which can store the inverse value of a matrix 

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL                                     ## creating variable inv and set to null 
        set_matrix <- function(y) {                     ## Function to update x matrix to new matrix if called upon and sets inv to null
                x <<- y                                
                inv <<- NULL
        }
        get_matrix <- function() x                          ##Function to return value of variable x
        set_inverse = function(inverse) inv <<- inverse     ##Function to set value of variable inv to inverse 
        get_inverse = function() inv                        ##Function to return value of variable inv 
        
        list(set_matrix=set_matrix, get_matrix = get_matrix, set_inverse=set_inverse, get_inverse = get_inverse)
        
}


## The purpose of this function is to determine the inverse of a matrix by either pulling it from the cache or by computing it using the solve function.

cacheSolve <- function(x, ...) {
     inv <-x$get_inverse()                                ##Assigning inverse value to variable inv                   
          ## Return a matrix that is the inverse of 'x'
      if (!is.null(inv)){                                 ## if inv is not null, print message "getting from cache"
                
                message("getting from cache")            
            
      }
         numbers <- x$get_matrix()                              
         inverse <- solve(numbers, ...)                 ## calculate the inverse of matrix 
         x$set_inverse(inverse)                         ## calling set_inverse function to cache calculated inverse of matrix  
         inverse                                        ##final output that will be returned 
}
