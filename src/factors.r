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