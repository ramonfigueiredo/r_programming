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