require './player'
require './questions'
require './game'


def start
  newgame = Game.new("Ben", "Amna")

  newq = newgame.turns
  newq.question
  newq.answer

  puts newq.question
  choice = gets.chomp.to_i

  if choice === newq.answer
    puts "you're right!"
  end


# puts newgame.turns
  # puts newgame.player1.inspect
end

start