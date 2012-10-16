# Project demonstrates
# - local and instance variables - DONE
# - arrays, hashes, and custom object type(s) - DONE apart from Custom???
# - logical conditions - DONE
# - branching via both if/elsif/else and case/when
# - classes and object instantiation
# - attr_accessor - DONE
# - instance methods - DONE
# - module mixin to class - ???
# - array - DONE
# - hash - DONE
# - command line input - DONE 
# - command line display - DONE
# - string interpolation - ???
# - comments - DONE
#


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





