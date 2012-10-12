## require code for House, Player
require "lib/house"
require "lib/player"

HOUSES = {
		1=>"Clubs",
		2=>"Diamonds",
		3=>"Hearts",
		4	=>"Spades"
	}

class Game
	
	# assign default user name if no name passed from command line
	def initialize(name)		

		# create player setting their name, passing them a reference
		# to the shared deck, and setting their hand size
		@character = Player.new(name, @costume , @eggs , @sweets)

		# set game state flag and reason string
		@game_over = false
		@game_over_reason = ""

		# initiate game play
		play_game
	end

	
	def play_game
		# display game startup message, including player name
		puts "Happy Halloween #{@character.name}. \n
		Do you dare to 'trick or treat' your weird neighbours? Your mission, if you're feeling brave, is to collect 10 sweets. \n
		If your neighbours choose 'trick' rather than give you a treat, you can egg them, but careful not to run out of tricks, or it's game over!"
		
		puts "Which house number do you want to trick or treat first? 1 to 10"
		
		# get house number for this round and create house class instance
		input = $stdin.gets.chomp
		input = input.to_i
		
		if input >= 1 && input <= 10
			
			@haunted_house = House.new(input, true, true, "treat", 5)
			puts "Welcome to number #{input} Spectre Street"
			@haunted_house.lights(input)
			
		else
			puts "Invalid choice, try again choose another number between 1 and 10"
		end
		
		
		# get ring bell input for this round and call bell method class instance
		input_bell = $stdin.gets.chomp
		
		if input_bell == "Y" 
			
			@haunted_house.bell(input_bell)
			
		elsif input_bell =="N"
		
			puts "Do you want to throw an egg?"
			
		else
			puts "Invalid choice, Y/N"
		end
		
		
		# no reply, throw egg response?
		input_throw = $stdin.gets.chomp
		
		if input_throw == "Y" 
			
			@character.eggs = @character.eggs - 1
			
		elsif input_trick =="N"
		
			puts "Move to next house"
			
		else
			puts "Invalid choice, Y/N"
		end


	end

	def play_round
		#get user to pick house number
		puts "Choose a house number between 1 and 10"
		input = $stdin.gets.chomp.to_i

		# confirm what house number they have chosen, lights on or off
		if input >= 1 || input <= 10
			puts "You have chosen house number #{input}. The lights are"
		else puts "Invalid choice, try again"
		end


		# get user to input 'move on' or 'ring bell'
		puts "Do you want to (M)ove on or (R)ing bell?"
		player_choice = $stdin.gets.chomp.upcase

		if (player_choice == "M")
			## need to explain moving to new house and they must choose again

		elsif (user_choice != "R")
			puts "Invalid choice, try again"
			play_round	
		end
			
	end

end



