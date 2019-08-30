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