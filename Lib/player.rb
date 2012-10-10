
class Player 
	# declare player attributes
		 attr_accessor :name
		 attr_accessor :costume
		 attr_accessor :eggs
		 attr_accessor :sweets
 
	def initialize(name, costume, eggs, sweets)
	 	# initialize accessors
	 	@name = name
	 	@costume = costume
	 	@eggs = 12
	 	@sweets = 0
	 
 	end
	
	
	
	def throw_egg(number)
		if @egg > 0
			@egg = @egg - number
			puts "Splat"
		elsif
			puts "No more eggs left"
		end 
	end
	
	
	
	def take_sweets(sweets)
		@sweets = @sweets + @new_sweets
	end
	

end