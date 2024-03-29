##################################
# Vector
# Indexing stating on 1 and not 0 as other programming languages
##################################

# Create vector
x1 <- c(1, 5, 4, 9, 0)

# typeof
# * Since, a vector must have elements of the same type,this function will try and coerce elements to the same type, 
# * if they are different.
# * Coercion is from lower to higher types from logical to integer to double to character.
typeof(x) # double

# length(x)
length(x)

# different types in a vector
x2 <- c(1, 5.4, TRUE, "hello")
typeof(x) # character

# Creating a vector using : operator
v <- 1:7;
v # print

# Creating a vector using seq() function
# * More complex sequences can be created using the seq() function
# * like defining number of points in an interval, or the step size.
seq(1, 3, by=0.2) # specify step size

seq(1, 5, length.out=4) # specify length of the vector

# Using integer vector as index
v # print(v)
v[3] # access 3rd element
v[c(2, 4)] # access 2nd and 4th element
v[-1] # access all, less 1st element
v[c(2, -4)]    # cannot mix positive and negative integers
v[c(2.4, 3.54)]    # real numbers are truncated to integers

# Using logical vector as index

v[c(TRUE, FALSE, FALSE, TRUE)]

v[v < 3]  # filtering vectors based on conditions
v[v > 1]

# Using character vector as index
v2 <- c("first"=3, "second"=0, "third"=9)

v2[c("first", "third")]

# Modify a vector in R

v3 <- c(-3, -2, -1, 0, 1, 2, 3)
v3[2] <- 0; # modify 2nd element
v3

v3[v3<0] <- 5; v3   # modify elements less than 0

v3 <- v3[1:4]; v3      # truncate x to first 4 elements

# Delete a vector
v3

V3 <- NULL
V3 # NULL
V3[3] # NULL

# Sorting
v4 = c(5, 2, 5, 7, 2, 46, 1)
v5 = sort(v4)
v5

v6 = 1:10
v6
v7 = sort(v6, decreasing=TRUE)
v7

isEven = v6 %% 2 == 0
justEvens = v6[v6 %% 2 == 0]
justEvens