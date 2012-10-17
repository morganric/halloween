## require code for House, Player
require "lib/house"
require "lib/player"


	
class Game
	
	attr_accessor :houses
	attr_accessor :character
	
	# assign default user name if no name passed from command line
	def initialize(name)		

		@houses = [
			House.new(1, true, true, "treat", 5),
			House.new(2, true, true, "treat", 10),
			House.new(3, true, true, "treat", 10),
			House.new(4, true, true, "treat", 5),
			House.new(5, true, true, "treat", 5),
			House.new(6, false, true, "treat", 15),
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
			input_bell = $stdin.gets.chomp.upcase
			
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
		input = input.to_i - 1
		
		if @houses[input] == nil
		
		puts "You've already been to that house, choose another door number..."
		ask_house
		
				
		else
				
			if input >= 0 && input <= 9	
	
				@haunted_house = @houses[input]
				
				if @haunted_house.visits > 0
				# trying to handle repeat visits
					puts "you've been here"
				else
					@haunted_house.visits += 1
				end

								
				
				puts "Welcome to number #{haunted_house_number} Spectre Street"
				
	
				if @haunted_house.lightson == true
			
					puts "The lights are on. Do you want to ring the bell? Y/N" 
			
				else
			
					puts "The lights are off. Do you want to ring the bell? Y/N" 
			
				end	
	
			else
				puts "Invalid choice, try again choose another number between 1 and 10"
			end
		end
	
	end
	
	

	def someone_at_door
		puts "Somebody comes to the door. Shout TRICK OR TREAT!!"
		sleep 1   
		print "."
		sleep 1
		print ".."

		if @haunted_house.trick_or_treat == "treat"
			more_sweets = @haunted_house.new_sweets
			puts "Treat. Here's #{more_sweets} sweets. Which house next?"
			sleep 1
			add_sweets(more_sweets)
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
			
			if @character.eggs > 0
				puts "SPLAT!!!"
				display_score
			elsif
			puts "no more eggs left. GAME OVER?"
			end
			
		end
	end
	
	def add_sweets(more_sweets)
		@character.sweets = @character.sweets + more_sweets
	end
	
	def display_score
		current_eggs = @character.eggs
		current_sweets = @character.sweets
		puts "#{current_eggs} Eggs left, #{current_sweets} Sweets so far!"
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



