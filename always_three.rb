puts "Give me a number:"
number = gets
number = number.to_i
final_number = number
final_number += 5
final_number *= 2
final_number -= 4
final_number /= 2
final_number -= number
puts "Your final number is #{final_number}"
