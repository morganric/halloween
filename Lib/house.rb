


class House

	# declare house attributes
	attr_accessor :house_number
	attr_accessor :lightson
	attr_accessor :athome
	attr_accessor :trick_or_treat
	attr_accessor :new_sweets
	
	# initialize house attributes
	def initialize(house_number, lightson, athome, trick_or_treat, new_sweets)
		@lights = lightson
		@athome = athome
		@trick_or_treat = trick_or_treat
		@new_sweets = new_sweets
		@house_number = house_number
		
	
	end
	
	def lights(house_number)
	
		if @lights_on == true
			
			puts "The lights are on. Do you want to ring the bell? Y/N" 
			
			else
			
			puts "The lights are off. Do you want to ring the bell? Y/N" 
			
		end	
	end
	
	def bell(house_number)
	
		if @athome == true
			
			puts "Somebody comes to the door. Shout TRICK OR TREAT!!"
				if @trick_or_treat == "treat"
			
					puts "Treat. Here's #{@new_sweets} sweets. Which house next?"
					
					else
					
					puts "No answer, do you want to throw an egg?"
					
				end	

			
			else
			
			puts "Nobody comes, do you want to throw an egg?"
			
		end	
	end	
	


end
	