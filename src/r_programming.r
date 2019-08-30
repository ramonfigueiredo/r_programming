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

# %s	  a string
# %d	  an integer
# %0xd	an integer padded with x leading zeros
# %f	  decimal notation with six decimals
# %.xf	floating point number with x digits after decimal point
# %e	  compact scientific notation, e in the exponent
# %E	  compact scientific notation, E in the exponent
# %g	  compact decimal or scientific notation (with e)

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
# String
##################################

str1 = "This is a string"
# Count The Number Of Characters (Or Bytes Or Width)
nchar(str1) # 16

sprintf("Dog > Egg : %s", "Dog" > "Egg")
sprintf("Dog == Egg : %s", "Dog"== "Egg")

# Paste function in R is used to concatenate 
str2 = paste("Test1", "Test2", sep="")
str2

# Remove string from string
substr(x=str2, start=2, stop=7)

# Replacement in string
sub(pattern="T", replacement = "R", x=str2) # replace first occurrence
gsub(pattern="Egg", replacement="Chicken", x = "Egg Egg") # replace all occurrence

# Split
strVect = strsplit("A dog ran fast", " ")
strVect

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

##################################
# Factors
##################################

# Factors are used to represent categorical data. 
# Factors can be ordered or unordered and are an important class for statistical analysis and for plotting.
# Factors are stored as integers, and have labels associated with these unique integers. 
# While factors look (and often behave) like character vectors, they are actually integers under the hood, 
# and you need to be careful when treating them like strings.

sex <- factor(c("male", "female", "female", "male"))
levels(sex)
nlevels(sex)
food <- factor(c("low", "high", "medium", "high", "low", "medium", "high"))
levels(food)
food <- factor(food, levels = c("low", "medium", "high"))
levels(food)
food <- factor(food, levels = c("low", "medium", "high"), ordered = TRUE)
levels(food)
min(food) # works!

##################################
# Data Frame
##################################

# A data frame is used for storing data tables. 
# It is a list of vectors of equal length. 
# For example, the following variable df is a data frame containing three vectors n, s, b.

n = c(2, 3, 5) 
s = c("aa", "bb", "cc") 
b = c(TRUE, FALSE, TRUE) 
df = data.frame(n, s, b)       # df is a data frame

# We use built-in data frames in R here
# For example, here is a built-in data frame in R, called mtcars.
mtcars 

#  cell value from the first row, second column of mtcars.
mtcars[1, 2] 

# cell value from  row and column names instead of the numeric coordinates
mtcars["Mazda RX4", "cyl"] 

nrow(mtcars)    # number of data rows 

ncol(mtcars)    # number of columns 

# Further details of the mtcars data set is available in the R documentation.
help(mtcars)


# Creating and using your data frame
custData = data.frame(name=c("Tom", "Sally", "Sue"),
                      age=c(43, 28, 35),
                      stringsAsFactors = F)
custData

custData[1, 1] # line 1 column 1

custData[1, 1:2] # line 1 column 1 and 2

custData[1:3, 2] # Get all ages

dim(custData) # Getting a dimension

# Adding a new line
recordJohn = data.frame(name="John", age=30)
custData = rbind(custData, recordJohn)
custData

# Adding new column
debt = c(0, 25.50, 36, 48.19)
custData = cbind(custData, debt)
custData

# Show all debits greater than 0
owesMoney = custData[custData$debt > 0, ]
owesMoney

##################################
# Loop
##################################

### repeat
# The Repeat Function(loop) in R executes a same block of code iteratively until a stop condition is met. 
# repeat loop in R, is similar to while and for loop, it will execute a block of commands repeatedly till break.

num = 1
repeat {
  print(num)
  num = num + 1
  if (num > 5) {
    break
  }
}

### while
num = 5
while (num > 0) {
  num = num - 1
  if(num %% 2 == 0) {
    next
  }
  print(num)
}

# while vs repeat: The syntax for the commands can be seen in ?Control:
# 
# while(cond) expr
# repeat expr

# This makes it clear that while tests a condition to determine when to finish looping, 
# but repeat requires you to explicitly break the loop on your own and can be at any point 
# in the body of the loop. 
# Depending on where you place your break statement, repeat may perform further parts of an 
# iteration compared to while.

### for
# repeat a specific number of times
v = 1:5
for(i in v) {
  print(i)
}

##################################
# Functions
##################################

# Defining a Function
fahrenheitToCelsius <- function(tempF) {
  tempC <- (tempF - 32) * 5 / 9
  return(tempC)
}
fahrenheitToCelsius(32)


getSum = function(num1, num2) {
  return(num1 + num2)
}
sprintf("5 + 6 = %d", getSum(5, 6))


getSumUsingDefaultValues = function(num1=2, num2=8) {
  return(num1 + num2)
}
sprintf("sum = %d", getSumUsingDefaultValues())


makeList = function(theString) {
  return(strsplit(theString, " "))
}

makeList("Random Words")


getSumMore = function(...) {
  numList = list(...) # convert argument into a list
  sum = 0
  for(i in numList) {
    sum = sum + i
  }
  sprintf("sum = %d", sum)
}
getSumMore(1,2,3,4)

# Disposable or anonymous function

numList = 1:10
dblList = (function(x) x * 2)(numList)
dblList

# Closures : Functions created by functions

# create a cubed function
power = function(exp) {
  function(x){
    x ^ exp
  }
}
cubed = power(3)

# call the cubed function
cubed(2)
cubed(1:5)


# Store function in list

addFunc = list(
  add2 = function(x) x + 2,
  add3 = function(x) x + 3
)

addFunc$add2(5)
addFunc$add3(5)

##################################
# Exception handling
##################################

# Handling a division with a string

divide = function(num1, num2) {
  tryCatch(
    num1 / num2,
    error = function(e) {
      if(is.character(num1) || is.character(num2)){
        print("Can not divide with strings")
      }
    }
  )
}
  
divide(10, "a")


##################################
# Reading and writing files
##################################

### Read a file

# Putting information into a data frame
# file=file.choose() will open the file selector
myPeople = read.table(file="people.txt", 
                      header = TRUE, sep = " ",
                      na.string=" ",
                      stringsAsFactors = FALSE
)
myPeople

### Add information in the file
donnaRecord = data.frame(fname="Donna", lname="Heyward", sex="female")

myPeople= rbind(myPeople, donnaRecord)
myPeople

# Changing record
myPeople[7, 2] = "Marx"
write.table(x=myPeople, file="people.txt", 
            sep=" ", na=" ", quote=FALSE, row.names = FALSE)
myPeople


# Get the first 3 records of our data frames
head(myPeople, 3)

# Get the last 2 records of our data frames
tail(myPeople, 2)


##################################
# Plotting
##################################

# Scatter plot
xy1 = matrix(data=c(1,2,3,4,5,
                    1,2,3,4,5), nrow = 5, ncol = 5)
plot(xy1)

### Plotting a line 
## type
# l = line
# b = line with bullets
# o = line with no space in the bullets
## main = main title
## xlab ylab = x and y labels
## col = colors
## pch=2  use the second point available to us
## lch=2  use the second line available to us
## xlim ylim = limites x and y
x2 = c(1,2,3,4,5)
y2 = c(1,2,3,4,5)
plot(x2, y2, type="b", pch=2, lty=2,
     main="My Plot", xlab = "x axis", ylab = "y axis",
     col="steelblue", xlim=c(-8, 8), ylim=c(-8, 8))

# type 'colors()' in the console to see all colors

### Plotting a line 
plot(x2, y2, type="b")

### Adding stretch lines in the 2 and 4 coordenates
abline(h=c(2,4), col="red", lty=2)

### Adding segments
segments(x0=c(2,4), y0=c(2,2), x1=c(2,4), y1=c(4,4), col="red", lty=2)

### Adding arrows
arrows(x0 =1.5, y0=4.5, x1=2.7, y1=3.25, col="blue")

text(x=1.25, y=4.75, labels="Center")

### load build data
# Waiting time between eruptions and the duration of the eruption for the Old Faithful geyser in 
# Yellowstone National Park, Wyoming, USA.
plot(faithful)
# eruptions over 4 are plotted with red color
eruptions4 = with(faithful, faithful[eruptions > 4,])
points(eruptions4, col="red", pch=3)


### Pie Plots
foodPref = c(15, 35, 10, 25, 15)
foodLabels = c("Spaghetti", "Pizza", "MacNCheese", 
               "Chicken", "Tacos")

png(file="chilc_food_pref.png")

colors = rainbow(length(foodPref))

pie(foodPref, foodLabels, man="Food Prefs", col = colors)

lengend("topright", c("Spaghetti", "Pizza", "MacNCheese", 
                      "Chicken", "Tacos"), cex=0.8,
        fill=colors)
dev.off() # save the graph into a file
# open the chilc_food_pref.png file


### 3D pie plot
install.packages("plottrix")

library(plotrix) # import plottrix library
foodPref = c(15, 35, 10, 25, 15)
foodLabels = c("Spaghetti", "Pizza", "MacNCheese", 
               "Chicken", "Tacos")

png(file="3d_chilc_food_pref.png")

pie3D(foodPref, labels=foodLabels, 
      main="Food Prefs", explode=0.1, start=pi/2, 
      labelcex=0.8)

dev.off() # save the graph into a file


### Bar chart
foodPref = c(15, 35, 10, 25, 15)
foodLabels = c("Spaghetti", "Pizza", "MacNCheese", 
               "Chicken", "Tacos")

png(file="food_pref_bar_chart.png")

colors = rainbow(length(foodPref))

barplot(foodPref, names.arg=foodLabels, 
        xlab = "Votes", ylab = "Food Options", 
      main="Food Prefs", col = colors)

dev.off() # save the graph into a file


##################################
# Math function
##################################

sqrt(x=1000)

log(x=4, base=2)

exp(x=2)

sum(c(1,2,3))

randD1 = c(1, 5, 6, 7, 10, 16)
mean(randD1)
median(randD1)
min(randD1)
max(randD1)
range(randD1) # min and max

ceiling(4.5)
floor(4.5)

# Cumulative sum
cumsum(c(1,2,3))

# Cumulative product
cumprod(c(1,2,3))

# Cumulative maximum
cummax(c(1,5,3,3,4,5))

# Cumulative minimum
cummin(c(1,5,-3,3,4,5))

# Generating random numbers
sample(0:1, 10, replace = TRUE) # 10 random numbers with values 1 and 0 

sample(0:20, 10, replace = TRUE) # 10 random numbers with values 0 to 20