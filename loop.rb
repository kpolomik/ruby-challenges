puts "Have you been good or bad today? (Respond good/bad)."

response = gets.chomp.downcase

while (response == "good")
	puts "I love you. Are you being good or bad now? (Respond good/bad)."
	response = gets.chomp.downcase
end

if (response == "bad")
	puts "That’s ok, I still love you."
end