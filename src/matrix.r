##################################
# Matrix
##################################
# A matrix is going to store values in rows and columns

matrix1 = matrix(data=c(1, 2, 3, 4)) # single column
matrix1

# rows and columns (2 x 2), by column
matrix2 = matrix(data=c(1, 2, 3, 4), nrow=2, ncol=2) 
matrix2

# rows and columns (2 x 2), by row
matrix3 = matrix(data=c(1, 2, 3, 4), nrow=2, ncol=2, byrow = TRUE) 
matrix3

# dimensions
dim(matrix3)

# get a value
matrix3[1, 2] # row 1 , colum 2

matrix3[1, ] # entire row 1

matrix3[, 2] # entire column 2

# combine vectors to make matrix
matrix4 = rbind(1:3, 4:6, 7:9)
matrix4

# takes the second and third row
matrix4[2:3,]
# or
matrix4[-1,]

# chaning values in position row=1,column=1 to 0
matrix4[1,1] = 0
matrix4

# chaning values in first row to 0
matrix4[1,] = 0
matrix4

# Multi dimensional array
array1 = array(data=1:8, dim=c(2,2,2)) # dim = dimensions you want
array1

array1[1, 2, 2]