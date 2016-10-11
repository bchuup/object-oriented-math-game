class Game
  attr_accessor :player1, :player2

  def initialize(name1, name2)
    @player1 = Player.new(name1)
    @player2 = Player.new(name2)
    @currentp = @player1
  end

  def ask_q
    newquestion = Questions.new
  end

  def switch_player
    if @currentp == @player1
      @currentp = @player2
    elsif @currentp == @player2
      @currentp = @player1
    end
  end

  def end_game
    if @player1.lives > 0
      puts "Game over! #{@player1.name} wins with #{@player1.lives} life/lives remaining"
    elsif @player2.lives > 0
      puts "Game over! #{@player2.name} wins with #{@player2.lives} life/lives remaining"
    end
  end

  def turn
    puts "#{@currentp.name}'s turn"
    new_q = ask_q

    puts new_q.question
    choice = gets.chomp.to_i

    if choice == new_q.answer
      puts "you're right! You still have #{@currentp.lives} life/lives left."
    else
      puts "you're wrong!"
      @currentp.decrease_life
      puts "You have #{@currentp.lives} life/lives left"
    end
  end

  def start_game
    while @player1.lives > 0 && @player2.lives > 0 do
      self.turn
      self.switch_player
    end
    self.end_game
  end
end
