# Eigenvalues are the solution set {𝜆} of the equation, |𝐴−𝜆𝐼| = 0, where𝐼 is the 
#Identity matrix.  
#𝑛×𝑛matrix - get a polynomial of degree𝑛, called the characteristic
#polynomial. 
#So, we have 𝑛roots of the polynomial and therefore, 𝑛eigenvalues.

A = matrix(c(13, -4, 2, -4, 11, -2, 2, -2, 8), nrow = 3)
z = eigen(A)
z$values                              
z[1]
z$vectors               
z[2]
det(A)
prod(z$values)

A = matrix(c(10,-6,3,5,11,-2,2,-1,5), nrow =3)
Z = eigen(A)
Z$Values
Z[1]
Z$vectors
Z[2]
det(A)



