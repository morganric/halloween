## require code for House, Player
require "lib/house"
require "lib/player"


	
class Game
	
	attr_accessor :houses
	
	# assign default user name if no name passed from command line
	def initialize(name)		

		@houses = [
			House.new(1, true, true, "treat", 5),
			House.new(2, true, true, "treat", 10),
			House.new(3, true, true, "treat", 10),
			House.new(4, true, true, "treat", 1),
			House.new(5, true, true, "treat", 5),
			House.new(6, false, true, "trick", 0),
			House.new(7, false, true, "trick", 0),
			House.new(8, false, false, "NA", 0),
			House.new(9, false, false, "NA", 0),
			House.new(10, false, false, "NA", 0)
			]
		
# @houses[current_house].house_number 		

		# create player setting their name, passing them a reference
		# to the shared deck, and setting their hand size
		@character = Player.new(name, @costume , @eggs , @sweets)

		# set game state flag and reason string
		@game_over = false
		@game_over_reason = ""

	end

	
	def play_game
		# display game startup message, including player name
		puts "Happy Halloween #{@character.name}. \n
		Do you dare to 'trick or treat' your weird neighbours? Your mission, if you're feeling brave, is to collect 10 sweets. \n
		If your neighbours choose 'trick' rather than give you a treat, you can egg them, but careful not to run out of tricks, or it's game over!"
		
		puts "Which house number do you want to trick or treat first? 1 to 10"
		

		loop do
			# get house number for this round and create house class instance
			ask_house
			
			# get ring bell input for this round and call bell method class instance
			input_bell = $stdin.gets.chomp
			
			if input_bell == "Y" 
				
				if @haunted_house.athome == true
					someone_at_door
				else
					puts "Nobody comes, do you want to throw an egg?"
					throw_egg
				end	
				
			elsif input_bell =="N"
				puts "Do you want to throw an egg?"
				throw_egg
			else
				puts "Invalid choice, Y/N"
			end
			
			
			
			puts "\n(Q)uit or (C)ontinue?"
			choice = $stdin.gets.chomp
			# unless user says quit, next loop to launch new game
			if choice.upcase == "Q"
				puts "Bai!"
				break
			end
 

			
			
			puts "Okay, which house next?"

		end


	end

	def ask_house
		input = $stdin.gets.chomp
		input = input.to_i
		
		if input >= 1 && input <= 10

			@haunted_house = @houses[input - 1]

			puts "Welcome to number #{input} Spectre Street"
			

			if @haunted_house.lights == true
		
				puts "The lights are on. Do you want to ring the bell? Y/N" 
		
			else
		
				puts "The lights are off. Do you want to ring the bell? Y/N" 
		
			end	

		else
			puts "Invalid choice, try again choose another number between 1 and 10"
		end
	end

	def someone_at_door
		puts "Somebody comes to the door. Shout TRICK OR TREAT!!"

		if @haunted_house.trick_or_treat == "treat"
			puts "Treat. Here's #{@new_sweets} sweets. Which house next?"
			add_sweets
			display_score
	
		else	
			puts "No answer, do you want to throw an egg?"
			throw_egg
		end	
	end

	def throw_egg
		# no reply, throw egg response?
		input_throw = $stdin.gets.chomp
		
		if input_throw == "Y" 
			@character.eggs = @character.eggs - 1
			puts "SPLAT!!!"
			display_score
			
		end
	end
	
	def add_sweets(sweets, new_sweets)
		@character.sweets = @character.sweets + @haunted_house.new_sweets
	end
	
	def display_score
		puts "#{@character.eggs} Eggs left, #{@character.sweets} Sweets so far!"
	end

	# def play_round
	# 	#get user to pick house number
	# 	puts "Choose a house number between 1 and 10"
	# 	input = $stdin.gets.chomp.to_i

	# 	# confirm what house number they have chosen, lights on or off
	# 	if input >= 1 || input <= 10
	# 		puts "You have chosen house number #{input}. The lights are"
	# 	else puts "Invalid choice, try again"
	# 	end
			
	# end

end



