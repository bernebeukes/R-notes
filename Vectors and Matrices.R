#R notes from the power points

#Vecotrs 

X = c(10,5,3,6,7)   # Makes a vector
X                  #Prints the vector X

z = c("Red","Blue") #When elements are charachters use ""

#Matrices:

A = matrix(c(2,1,2,4), nrow = 2)        #matric with  2 rows
B = matrix(c(2,3,4,1,7,3),ncol = 3)     #XMatrix with 3 colomns

#Data lenght should eb a submiltiple of the rows or colomns. 

C = array(c(4,5,4,4,3,2,7,6,3,2,6,7), dim = c(2,2,3)) #gives 3 two by two vectors
print(C)

#c() used when a set of number/characters are used.
#array() for higher dimension matrices. 

#functions when working with R
#c() - creates a numberic vector
#seq(x,y,d) - creates a sequence btw x and y with difference d (default d = 1) 
#is.vector() - checks wheter the objects provided as an argument is a vector
#as.function() - helps to convert a non vector into a vector. 
#numeric() - converts a character vector into numeric vector.
# rep()  - vector by repeating the given number vector a certain time. 
#max() and min() -  for max and min values
#range() - returns the max and min of a sequence of numbers
#lenght() - returns no of elements in sequence
#sum() and product() - returns sum and product of sequence
#sort() returns ordered sequence
#pmax() and pmin() - max/min in each position of the vectors are obtained. 
#order() - returns the position of the elements in sequence from min to max
#sqrt() - returns square root of a number

#A[i,j] - returns the ith row and jth colomn
#t(b) - transpose of b
#A%*%B - product of A and B
# mean() - returns mean off sequence of observations
# var() - returns variance of observation

a = c(x = 1, y =2)
is.vector(a)
as.vector(a)

seq(2,10,2)

x = c('1','2','3','4','5') #creating a character vector
y = as.numeric(x)          #
y                   #printing the numeric vector
is.numeric(y)       #Checks wheter y is numeric.

rep(2,10)           #repeats 2 10 times

#NB X[] returns the elemeants of a vector

x = c(1,2,3,4)
x[x]

q = c(2,4,2,3)
w = c(1,2,3,5)
t = c(3,1,4,5)

pmax(q,w,t)
pmin(q,w,t)

p = seq(1,20,2)
print(p)
sort(p)
order(p)

f = c(2,5,4,3,6,7,1,23,3,4)
y = order(f)
f
y




