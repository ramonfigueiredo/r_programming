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