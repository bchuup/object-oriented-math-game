require './player'
require './questions'
require './game'

puts "What is player 1's name"
name1= gets.chomp
puts "What is player 2's name"
name2= gets.chomp

newgame = Game.new(name1, name2)
newgame.start_game
