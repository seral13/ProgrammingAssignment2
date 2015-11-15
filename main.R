#This script runs the functions
#makeChacheMatrix and cacheSolve

source("cachematrix.R")
x <- rbind(c(2, -1/8), c(-1/8, 2))
m <- makeCacheMatrix(x)
m$get()
cacheSolve(m)
