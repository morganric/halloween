
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
	
	
	
	def throw_egg
	
	if @egg > 0
		@egg = @egg - 1
		puts "Splat"
	elsif
		puts "No more eggs left"
	end
	
	
 
	end
	
	
	
	def take_sweets()
	
	@sweets = @sweets + @new_sweets
	
	
	end
	
		
	def next_house
	
			
	
	end
	
	
	
	def knock_on_door
		
		
	end

end