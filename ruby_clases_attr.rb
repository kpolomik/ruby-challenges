class Husband
	attr_accessor :husband_name, :spouse_name

	def greeting
		return "Honey, I'm home!"
	end
end

my_husband = Husband.new
my_husband.husband_name= "Mike"
husband_name = my_husband.husband_name

my_husband.spouse_name= "me"
wifey = my_husband.spouse_name

puts "#{husband_name} greets #{wifey} with #{my_husband.greeting}"