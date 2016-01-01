# This script always results in the number 3

# Ask the user for a number, any number
puts "Give me a number:"

# Grab that number, store it in a variable and convert it to an integer
number = gets.to_i

# Create a new variable for the final number, while preserving the initial user number for later use. Do all the math in one line while outputting the info to the user.

puts "Your final number is " + (((((number + 5) * 2) - 4) / 2) - number).to_s