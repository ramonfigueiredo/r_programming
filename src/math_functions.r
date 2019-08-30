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