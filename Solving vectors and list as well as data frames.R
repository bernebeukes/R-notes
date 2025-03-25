# removing memory

rm(list = ls())

#det() - provides determinant of a matrix
#solve(A,y) - sloves matrix A using values of y 

A = matrix(c(2,6,1,-3,0,5,5,4,7),ncol = 3)
det(A)
y = c(2,5,4)
x = solve(A,y)   #x = A^-1y
x

#To get a inverse of a non- singular matric
#solv(A) if det(A) = 0 then inverse is ginv(A)

A = matrix(c(4, 4, -2, 4, 4, -2, -2, -2, 10), nrow=3)
#To use teh ginv() functions we need to use the package MASS
det(A)
library(MASS)
ginv(A)

#cbind() - combine two or more matrices by colomn, no of rows must be = 

A = matrix(c(4, 4, -2, 4, 4, -2, -2, -2, 10), nrow=3)
B =  matrix(c(2,6,1,-3,0,5),nrow=3)
cbind(A,B)

#rbind()  combine two/more matrices by rows, no of rows be =

A = matrix(c(4, 4, -2, 4, 4, -2, -2, -2, 10), nrow=3)
B =  matrix(c(2,6,1,-3,0,5),ncol=3)
rbind(A,B)   ## B matrix is at the bottom
rbind(B,A)   ## B matrix is at the top

#Nb a missing value is assigned by NA
#finding a missing value in a dataset :is.na()
#removing a missing value in code: ()[!is.na()]

# Rondom sampling
#sample(𝑎:𝑏, 𝑛, replace=TRUE) (with replacement)
# sample(𝑎:𝑏, 𝑛, replace=FALSE) (without replacement)

sample(1:10, 5, replace=FALSE)  #You can also use T for TRUE and F for FALSE.
sample(1:10, 7, replace=TRUE)

#List and data frame

#- An R ‘list’ is an object consisting of an ordered collection of objects known as its components.
#Components:numbers, vectors, matrices, characters ect

Lst = list(name="Fred", wife="Mary", no.children=3, child.ages=c(4,7,9))
Lst
Lst[[1]]
Lst[[4]][1]
# To print a component in a ‘list’  [[ ]].
# If that component is a vector and we want extract one specific value from that vector, we 
#use [ ] after the [[ ]].


#lenth(Lst) - gives the (top level) components the list has

B = matrix(c( 2,6,1,-3,0,5),nrow =3)
Lst[5] = list((matrix = B))
Lst

#data frames is a table or 2D array like structure
#Vectors in data frames must have SAME LENGTH
#Matrix structures must all have SAME ROW SIZE

# Create the data frame.
emp.data = data.frame(
  emp_id = c (1:5), 
  emp_name = c("Rick","Dan","Michelle","Ryan","Gary"),
  salary = c(623.3,515.2,611.0,729.0,843.25),   
  start_date = as.Date(c("2012-01-01", "2013-09-23", "2014-11-15", "2014-05-11",
                         "2015-03-27")),
  stringsAsFactors = FALSE
)
# Print the data frame.
emp.data

#A data.frame() can also be amended as the list() function.

emp.data[5] = data.frame(end_date = as.Date(c("2018-09-11","2018-09 -
12","2018-09-12","2018-09-12","2018-09-12")))
emp.data

#Assogning row and column names

#printing original row name sof data frame
rownames <- rownames(emp.data)
print (rownames)

# changing row names of data frame
rownames(emp.data) <- c("Row1","Row2","Row3","Row4","Row5")
emp.data

#similiar process for column names 

#More about matrices:
#Now, we want to transform a data frame into a matrix. 
#as.matrix() is a generic function. The method for data frames will return a character 
#matrix if there is only atomic columns and any non-(numeric/logical/complex) column.

as.matrix(emp.data)

# Create a data frame with row names
df = data.frame(A = 1:3, B = 4:6)
df
rownames(df) = c("Row1", "Row2", "Row3")
rownames(df)
# Convert the data frame to a matrix
mat = as.matrix(df)
mat
# Check the row names of the resulting matrix
print(rownames(mat))

#To transform a data frame into a numerical matrix, we use the data.matrix() function.
#Unlike as.matrix(), which can result in a character matrix if any columns are non
#numeric (to avoid data loss or misinterpretation), data.matrix() focuses on creating a 
#numeric matrix, which can be particularly useful for mathematical and statistical 
#operations that require numeric input.

#Example 2. 
# Create a data frame with different column types
df =  data.frame(  
  Person = 1:4,  
  Education_level = factor(c("Level1", "Level2", "Level1", "Level2")),  
  Married = c(TRUE, FALSE, TRUE, FALSE),  
  Employed = c("YES","NO","YES","YES")
)
df
# Convert the data frame to a numeric matrix using data.matrix()
numeric_matrix = data.matrix(df)
# Print the resulting numeric matrixprint(numeric_matrix)
numeric_matrix

#to get the trace we need the package "psych"

library("psych")
tr()






