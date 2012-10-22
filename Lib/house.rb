class House

	# declare house attributes
	attr_accessor :house_number
	attr_accessor :lightson
	attr_accessor :athome
	attr_accessor :trick_or_treat
	attr_accessor :new_sweets
	attr_accessor :visits
	
	# initialize house attributes
	def initialize(house_number, lightson, trick_or_treat)
		@house_number = house_number
		@lightson = lightson
		@athome = [true, false].shuffle[0]
		@trick_or_treat = trick_or_treat
		@new_sweets = rand(10)
		
		
		@visits = 0
	end
	
	
# 	def bell(house_number)
# 	
# 		if @athome == true
# 			
# 			puts "Somebody comes to the door. Shout TRICK OR TREAT!!"
# 
# 			if @trick_or_treat == "treat"
# 		
# 				puts "Treat. Here's #{@new_sweets} sweets. Which house next?"
# 				
# 			else
# 				
# 				puts "No answer, do you want to throw an egg?"
# 				
# 			end	
# 
# 			
# 		else
# 			
# 			puts "Nobody comes, do you want to throw an egg?"
# 			
# 		end	
# 	end	
	


end
	