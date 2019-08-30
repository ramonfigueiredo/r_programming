##################################
# print
##################################

print(1)

##################################
# Prints with sprintf
##################################

sprintf("3 + 5 = %d", 3 + 5)
sprintf("1 + 3 = %1.3f", 1 / 3)
sprintf("1 %% 3 = %1.3f", 1 %% 3)

# %s	  a string
# %d	  an integer
# %0xd	an integer padded with x leading zeros
# %f	  decimal notation with six decimals
# %.xf	floating point number with x digits after decimal point
# %e	  compact scientific notation, e in the exponent
# %E	  compact scientific notation, E in the exponent
# %g	  compact decimal or scientific notation (with e)

##################################
# Prints with cat
##################################

cat("TRUE && FALSE = ", T && F, "\n")