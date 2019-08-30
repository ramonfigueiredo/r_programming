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