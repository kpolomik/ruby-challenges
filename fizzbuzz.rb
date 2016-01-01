iteration = 1

while (iteration <= 100)
	if (iteration % 3 == 0 && iteration % 5 != 0)
		puts "Fizz"
	elsif (iteration % 5 == 0 && iteration % 3 != 0)
		puts "Buzz"
	elsif (iteration % 3 == 0 && iteration % 5 == 0)
		puts "FizzBuzz"
	elsif (iteration % 3 != 0 && iteration % 5 != 0)
		puts iteration
	end

	iteration += 1
end
		
		
