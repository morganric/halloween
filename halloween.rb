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
	
		# bootstrap game launch by creating new game object
		game = Game.new(name)

		game.play_game
		

	# handle and display error raised above
	rescue ArgumentError => error
		puts error.message
end





