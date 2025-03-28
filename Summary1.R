#Summary

#var <- (sum((x-mean(x))^2))/(length(x)-1)  Give the variance with var() function

#det()  Calculate the determinant
#tr()   Calculate the trace, sum of the diagonals. Need the package psych
#library(psych)
#Ex. det(M[1:4,])   trM[1:4,]

#ginv()  Give the inverse of a matrix. Need this package MASS
#Package library(MASS)

#is.na()  Find if there is a missing value
#y = z[!is.na(z)] remove the missing value from function z

#Random sample
#sample(a:b , n, replace=TRUE)  Draw a sample with replacement

#List
#Lst = list(...)
#Lst[[]]  Will print the component of the list in [[]]
#If the component is a vector use e.g Lst[[4]][1]
#length(Lst)  Give the number of component i the list
#Lst$xxx   refer to th giving component xxx of the list
#Lst[5]=yyy  Will extend a givin list by adding component yyy in postion 5

#Data frame
#emp.data = data.frame()
#emp.data[4]=data.frame(zzz)   Will extend a givin fata frame by adding zzz inposition 4
#rownames(emp.data) <- c(row1, row2, row3)   Change row names
#colnames(emp.data) <- c(col1, col2, col3)   Change column names
#as.matrix()   Transform a data frame into a matrix

#Matrix
#det()
#tr()
#Manually compute det and tace
#A <- matrix(c(...))
#z <- eigen(A)
#z$values
#prod(z$values)   Give the determinant
#sum(z$values)   Give the trace

#Other matrices
#B <- diag(1:3)   Diagnol matrix
#I <- diag(3)   Create an identity matrix
#C <- solve()   Give the inverse matrix
#D <- ginv()   Give the generalized invers if det is O. Need package MASS
#library(MASS)
#z <- eigen()   
#print(z$values)   Give the eigen value
#print(z$vectors)   Give the eigen vector
#rownames() <- c(row1, row2, row3)   Change row names
#colnames() <- c(col1, col2, col3)   Change column names

#Reading files
#Read.delim()   Read tab seperated values, Points(.) used as decimal point
#read.delim2()   Read tab seerated values, comma(,) used as decimal point
#read.csv()   Read comma seperated values
#Read tabular data into R
#read.table(file, header = FALSE, sep = "", dec = ".")
#Read "comma separated value" files (".csv")
#read.csv(file, header = TRUE, sep = ",", dec = ".")
#read.csv2(file, header = TRUE, sep = ";", dec = ",")   used for read.csv2

#Analize Data
#head()   Print first 6 rows
#str()   Structure
#min()
#mean()
#var()
#median()
#quanile(data$xxx, 0.3)   give the 30th percentile
#summarry
#stat.desc()   For more descriptive stats. Need package pastecs
#library(pastecs)
#table()   Gives the number of occurrences for each unique value.
#sort()   Highest to lowest
#sort(A, decreasing=TRUE)   Sort highest to lowest

#R-Markdown
```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = F)
```
#If echo = T, the codes will show up. If echo=F, the codes will be hidden.

# Operators
 == (equal to)
 != (not equal)
 %% (return the remainder of a division)
 %in% (check if element is present in a vector)
 %>% (chain functions togehter)
