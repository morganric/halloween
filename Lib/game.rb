## require code for House, Player
#require "lib/house"
#require "lib/player"

class Game
	

	def play_game
		# display game startup message, including player name
		puts "Happy Halloween #{@player.name}. 
		Do you dare to 'trick or treat' your weird neighbours? Your mission, if you're feeling brave, is to collect 10 sweets. 
		If your neighbours choose 'trick' rather than give you a treat, you can egg them, but careful not to run out of tricks, or it's game over!"
		
		puts "Where do you want to go first? Choose 'A' for Haunted Heights, or 'B' for Spectre Street."

		input = $stdin.gets.chomp
		if input == "A"
			puts "Welcome to Haunted Heights"

		if input =="B"
			puts "Welome to Spectre Steet"	

		else
			puts "Invalid choice, try again"
		end

	end

	def play_round
		#get user to pick house number
		puts "Choose a house number between 1 and 10"
		input = $stdin.gets.chomp.to_i

		# confirm what house number they have chosen, lights on or off
		if input >=1 || input <=10
			puts "You have chosen house number #{input}. The lights are"
		else puts "Invalid choice, try again"


		# get user to input 'move on' or 'ring bell'
		puts "Do you want to (M)ove on or (R)ing bell?"
		player_choice = $stdin.gets.chomp.upcase

		if (player_choice == "M")
			## need to explain moving to new house and they must choose again

		elsif (user_choice !== "R")
			puts "Invalid choice, try again"
			play_round	

end



