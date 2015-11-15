# This script runs the functions
# 'makeMatrix' and 'cacheSolve'

source("cachematrix.R")
x <- rbind(c(2, -1/8), c(-1/8, 2))
m <- makeMatrix(x)
m$get()
cacheSolve(m)
