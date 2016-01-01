class Husband
	def set_name=(husband_name)
		@husband_name = husband_name
	end

	def get_name
		return @husband_name
	end

	def set_spouse_name=(spouse_name)
		@spouse_name = spouse_name
	end

	def get_spouse_name
		return @spouse_name
	end

	def greeting
		return "Honey, I'm home!"
	end
end

my_husband = Husband.new
my_husband.set_name= "Mike"
husband_name = my_husband.get_name
puts "Greet #{husband_name} with #{my_husband.greeting}"