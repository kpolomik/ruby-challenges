# methods first is good practice

# method to determine birthdate_path based on birthdate entered
def birthdate_path(birthdate)

	initial_sum_birthdate = birthdate[0].to_i + birthdate[1].to_i + birthdate[2].to_i + birthdate[3].to_i + birthdate[4].to_i + birthdate[5].to_i + birthdate[6].to_i + birthdate[7].to_i

	final_sum_birthdate = initial_sum_birthdate.to_s

	final_sum_birthdate = final_sum_birthdate[0].to_i + final_sum_birthdate[1].to_i

	if (final_sum_birthdate > 9)
		final_sum_birthdate = final_sum_birthdate.to_s
		final_sum_birthdate = final_sum_birthdate[0].to_i + final_sum_birthdate[1].to_i
	end

	return final_sum_birthdate

end

# method to determine birthdate meaning
def birthdate_meaning(birthdate_path_num)
	
	meaning = "Your numerology number is #{birthdate_path_num}. "

	case birthdate_path_num
	when 1
		meaning += "One is the leader. The number one indicates the ability to stand alone, and is a strong vibration. Ruled by the Sun."
	when 2
		meaning += "This is the mediator and peace-lover. The number two indicates the desire for harmony. It is a gentle, considerate, and sensitive vibration. Ruled by the Moon."
	when 3
		meaning += "Number Three is a sociable, friendly, and outgoing vibration. Kind, positive, and optimistic, Three’s enjoy life and have a good sense of humor. Ruled by Jupiter."
	when 4
		meaning += "This is the worker. Practical, with a love of detail, Fours are trustworthy, hard-working, and helpful. Ruled by Uranus."
	when 5
		meaning += "This is the freedom lover. The number five is an intellectual vibration. These are ‘idea’ people with a love of variety and the ability to adapt to most situations. Ruled by Mercury."
	when 6
		meaning += "This is the peace lover. The number six is a loving, stable, and harmonious vibration. Ruled by Venus."
	when 7
		meaning += "This is the deep thinker. The number seven is a spiritual vibration. These people are not very attached to material things, are introspective, and generally quiet. Ruled by Neptune."
	when 8
		meaning += "This is the manager. Number Eight is a strong, successful, and material vibration. Ruled by Saturn."
	when 9
		meaning += "This is the teacher. Number Nine is a tolerant, somewhat impractical, and sympathetic vibration. Ruled by Mars. "
	else 
		meaning += "Your number was greater than 9 but less than 1 and I have a logic error."
	end

end

# ask the user for the bday
puts "Please enter your birthdate in the following format: MMDDYYYY"
birthdate = gets

# get the birthdate path num by calling the method and storing the result in a variable
birthdate_path_num = birthdate_path(birthdate)

# get the meaning by calling the method and store in variable
meaning = birthdate_meaning(birthdate_path_num)

# display meaning to user
puts meaning



