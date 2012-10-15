
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
	
		

end