# This script always results in the number 3

# Ask the user for a number, any number
puts "Give me a number:"

# Grab that number, store it in a variable called number, then convert it to an integer
number = gets
number = number.to_i

# Create a new variable for the final number, while preserving the initial user number for later use
final_number = number

# Add 5
final_number += 5

# Multiply by 2
final_number *= 2

# Subtract 4
final_number -= 4

# Divide by 2
final_number /= 2

# Subtract the user’s original number from the final number thus far
final_number -= number

# Give the user the final number (spoiler: the number is 3)
puts "Your final number is #{final_number}"
