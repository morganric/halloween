
class House
	# declare house attributes
	attr_accessor :house_number
	attr_accessor :lightson
	attr_accessor :athome
	attr_accessor :trick_or_treat
	attr_accessor :new_sweets
	
	# initialize house attributes
	def initialize(lightson, athome, trick_or_treat, new_sweets)
		@lights = lightson
		@athome = athome
		@trick_or_treat = trick_or_treat
		@new_sweets = new_sweets
		@house_number = house_number
		
	
	end
	
	
	
end
	