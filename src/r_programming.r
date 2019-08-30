##################################
# Assignment
# <- or =
# Variable naming: recommended camelCase
##################################

myNum1 <- 1
# or 
myNum2 = 2

# Assignment Operators in R
# <-, <<-, =	Leftwards assignment
# ->, ->>	Rightwards assignment
3 -> myNum3
myNum3 # 3
4 ->> myNum4
myNum4 # 4

##################################
# print
##################################

print(1)

##################################
# Variable types
##################################

# Everything in R is an object.

# numeric: real or decimal
print(class(4))
print(class(123.456))
# integer
print(class(4L))
# logical
print(class(TRUE))
print(class(T))
print(class(FALSE))
print(class(F))
# complex
print(class(1 + 4i))
# character
print(class("Sample"))
# raw
print(class(charToRaw("Sample")))

# class() - what kind of object is it (high-level)?
# typeof() - what is the object's data type (low-level)?
# length() - how long is it? What about two dimensional objects?
# attributes() - does it have any metadata?

##################################
# Checking variable types
##################################

var = 3L
is.integer(var) # TRUE

var = 3
is.numeric(var) # TRUE

# is.array()
# is.atomic()
# is.character()
# is.complex()
# is.data.frame()
# is.double()
# is.list()
# is.logical()
# is.matrix()
# is.na()
# is.vector()
# And so on

##################################
# Prints with sprintf
##################################

sprintf("3 + 5 = %d", 3 + 5)
sprintf("1 + 3 = %1.3f", 1 / 3)
sprintf("1 %% 3 = %1.3f", 1 %% 3)

##################################
# Prints with cat
##################################

cat("TRUE && FALSE = ", T && F, "\n")

##################################
# Operation
##################################
x = 4
y <- 5
sprintf("%d", x + y)	# y added to x	2 + 3 = 5
sprintf("%d", x - y)	# y subtracted from x	8 - 2 = 6
print(x * y)	# x multiplied by y	3 * 2 = 6
print(x / y)	# x divided by y	10 / 5 = 2
print(x ^ y) # (or x ** y)	x raised to the power y	2 ^ 5 = 32
print(x %% y)	#remainder of x divided by y (x mod y)	7 %% 3 = 1
print(x %/% y)	# x divided by y but rounded down (integer divide)	7 %/% 3 = 2

##################################
# R Operators
##################################

# Arithmetic Operators in R

# +	Addition
# -	Subtraction
# *	Multiplication
# /	Division
# ^	Exponent
# %%	Modulus (Remainder from division)
# %/%	Integer Division

# ==================================

# Relational Operators in R

# <	Less than
# >	Greater than
# <=	Less than or equal to
# >=	Greater than or equal to
# ==	Equal to
# !=	Not equal to

# ==================================

# Relational Operators in R

# <	Less than
# >	Greater than
# <=	Less than or equal to
# >=	Greater than or equal to
# ==	Equal to
# !=	Not equal to

# ==================================

# Logical Operators in R

# !	Logical NOT
# &	Element-wise logical AND
# &&	Logical AND
# |	Element-wise logical OR
# ||	Logical OR

# ==================================

##################################
# Conditional Expressions
##################################

# if, else if, else

age = 18
if(age >= 16) {
  print("Drive and vote")
} else if (age >= 16) {
  print("Drive")
} else {
  print("Wait")
}

# switch
grade = "C"
switch(grade, 
       "A" = print("Great"),
       "B" = print("Good"),
       "C" = print("OK"),
       "D" = print("Bad"),
       "E" = print("Terrible"),
       print("No such grade") # default
       )
# OK

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
