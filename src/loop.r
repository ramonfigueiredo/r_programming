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
