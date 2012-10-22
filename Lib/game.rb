## require code for House, Player
require "lib/house"
require "lib/player"


	
class Game
	
	attr_accessor :houses
	attr_accessor :character
	attr_accessor :houses_visited
	
	# assign default user name if no name passed from command line
	def initialize(name)		

		@houses = [
			House.new(1, true, "treat"),
			House.new(2, true, "treat"),
			House.new(3, true, "treat"),
			House.new(4, true, "treat"),
			House.new(5, true, "treat"),
			House.new(6, true, "treat"),
			House.new(7, true, "trick"),
			House.new(8, false, "NA"),
			House.new(9, false, "NA"),
			House.new(10, false, "NA")
			]
			
		@houses_visited = 0
		
# @houses[current_house].house_number 		

		# create player setting their name, passing them a reference
		# to the shared deck, and setting their hand size
		@character = Player.new(name , @eggs , @sweets)

		# set game state flag and reason string
		@game_over = false
		@game_over_reason = ""

	end

	def display_score
		current_eggs = @character.eggs
		current_sweets = @character.sweets
		puts "\n SCORE: #{current_eggs} Eggs, #{current_sweets} Sweets!"
	end

	
	def play_game
		# display game startup message, including player name
		puts "Happy Halloween #{@character.name}. \n
		Do you dare to 'trick or treat' your weird neighbours? Your mission, if you're feeling brave. \n
		If your neighbours choose 'trick' rather than give you a treat, you can egg them, but careful not to run out of tricks, or it's game over!"
		
		puts"You begin with"
		display_score

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
			choice = $stdin.gets.chomp.upcase
			# unless user says quit, next loop to launch new game
			if choice.upcase == "Q"
				puts "Bai!"
				break
			end

			@houses_visited += 1
			
			if @houses_visited >= 10 
				puts "GAME OVER!"
				display_score
				break	
			else
				puts "Okay, which house next?"
			end
		
		end


	end

	def ask_house
		input = $stdin.gets.chomp
		input = input.to_i - 1
		
				
			if input >= 0 && input <= 9	
	
				@haunted_house = @houses[input]
				haunted_house_number =  @haunted_house.house_number
				
				if @haunted_house.visits > 0
				# trying to handle repeat visits
					puts "you've been here"
					ask_house
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
	
	

	def someone_at_door
		puts "Somebody comes to the door. Shout TRICK OR TREAT!!"
		sleep 1   
		print "."
		sleep 1
		print "."
		sleep 1
		print "."
		sleep 1

		if @haunted_house.trick_or_treat == "treat"
			more_sweets = @haunted_house.new_sweets
			puts "Treat. Here's #{more_sweets} sweets."
			sleep 1
			add_sweets(more_sweets)
			display_score
	
		else	
			puts "Trick! Do you want to throw an egg?"
			throw_egg
		end	
	end

	def throw_egg
		# no reply, throw egg response?
		input_throw = $stdin.gets.chomp.upcase
		
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



