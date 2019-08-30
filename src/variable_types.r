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