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
