class Beer

	def set_name=(beer_name)
		@name = beer_name
	end

	def get_name 
		return @name
	end

	def set_brand=(brand)
		@brand = brand
	end

	def get_brand
		return @brand
	end

	def set_brew_date=(brew_date)
		@brew_date = brew_date
	end

	def get_brew_date
		return @brew_date
	end

end

class IndiaPaleAle < Beer

	def set_pine_coniness=(pine_coniness)
		@pine_coniness = pine_coniness
	end

	def get_pine_coniness
		return @pine_coniness
	end

end

class Pilsner < Beer

	def refreshing_on_hot_day
		return "Ahhh"
	end
end


my_favorite_ipa = IndiaPaleAle.new
my_favorite_ipa.set_name= "Torpedo Extra IPA"
my_favorite_ipa.set_pine_coniness= "SUPER piney"
fav_ipa = my_favorite_ipa.get_name
puts "My favorite IPA is #{fav_ipa} and it is #{my_favorite_ipa.get_pine_coniness}!"

my_favorite_pilsner = Pilsner.new
my_favorite_pilsner.set_name="Pilsner Urquell"
puts "When I drink #{my_favorite_pilsner.get_name} on a hot day, I can't help but say '#{my_favorite_pilsner.refreshing_on_hot_day}'."

puts my_favorite_pilsner.inspect
puts my_favorite_ipa.inspect