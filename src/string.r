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