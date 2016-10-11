require './player'
require './questions'
require './game'


def start
  newgame = Game.new("Ben", "Amna")

    currentp = newgame.player1

  while newgame.player1.lives > 0 && newgame.player2.lives > 0 do

    puts "#{currentp.name}'s turn"
    newq = newgame.turns
    newq.question
    newq.answer

    puts newq.question
    choice = gets.chomp.to_i

    if choice === newq.answer
      puts "you're right! You still have #{currentp.lives} lives."
    else
      puts "you're wrong!"
      currentp.incorrect
      puts "You have #{currentp.lives} lives left"
    end

    if currentp === newgame.player1
      currentp = newgame.player2
    elsif currentp === newgame.player2
      currentp = newgame.player1
    end

  end
  if newgame.player1.lives > 0
    puts "Game over! Player 1 wins with #{newgame.player1.lives} remaining"
  elsif newgame.player2.lives > 0
    puts "Game over! Player 2 wins with #{newgame.player2.lives} remaining"
  end
end

start