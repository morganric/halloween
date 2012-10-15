# USAGE: ruby halloween.rb "User Name"

# add current directory to Ruby LOAD_PATH
$LOAD_PATH.unshift(File.dirname(__FILE__))

# require game class from /lib relative to current directory per modified LOAD_PATH
require "lib/game"



# pass first command line argument - User's name - to new Game object
name = ARGV[0]
begin
	# raise error unless user enters a string value name as a command line argument
	raise ArgumentError, "Please enter a player name as a command line parameter." unless name.is_a? String
	loop do
		# bootstrap game launch by creating new game object
		game = Game.new(name)

		game.play_game
		# when Game::play_game ends, ask if user wants to quit or continue
		puts "\n(Q)uit or (C)ontinue?"
		choice = $stdin.gets.chomp
		# unless user says quit, next loop to launch new game
		next unless choice.upcase == "Q"
			puts "Don't have nightmares! Mwah hah hah!"
		break
	end
	# handle and display error raised above
	rescue ArgumentError => error
		puts error.message
end





