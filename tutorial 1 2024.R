#Q1. Get a dataset from any online resource. You can find a dataset of your domain 
#(e.g. if you are studying economics, you find an economics data). You are free to use google or any other
#search engine. Analyse the dataset using the R tools we have learned so far.

# Load the dataset
data("mtcars")
# Calculate basic statistics for mpg
mean_mpg = mean(mtcars$mpg)
median_mpg = var(mtcars$mpg)
sd_mpg = sd(mtcars$mpg)
# Print the statistics
cat("Mean of mpg:", mean_mpg, "\n")
## Mean of mpg: 20.09062
cat("Variance of mpg:", median_mpg, "\n")
## Variance of mpg: 36.3241
cat("Standard deviation of mpg:", sd_mpg, "\n")
## Standard deviation of mpg: 6.026948

#Create any two matrices A and B as you like. Write a R code to manually compute their
#matrix product, C = AB, without using the %*% operator, where:
#Matrix A has dimensions 4 x 4
#Matrix B has dimensions 4 x 4
#What is the value of the element in the 3rd row and 4th column in C?
A = matrix(1:16, nrow = 4) # 4x4 matrix
B = matrix(17:32,nrow = 4) # 4x4 matrix
A
B
# Expected result: C should be a 2x2 matrix
sum(A[3,]*B[,4])
## [1] 1118
#The element in matrix C is 1118.

