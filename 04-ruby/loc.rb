# lines of code of the file that the user passed in through the terminal


# need to use ARGV
# ARGV - built in variable
# IO.read()
# puts 28


# terminal usage example
# $ ruby loc.rb guessing_game.rb
# $ 28

puts IO.read(ARGV[0]).split("\n").length

