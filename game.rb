class Game
  attr_accessor :player1, :player2

  def initialize(name1, name2)
    @player1 = Player.new(name1)
    @player2 = Player.new(name2)
  end

  def turns
    newquestion = Questions.new
    puts newquestion
    newquestion
  end

  def lives
    playerlives = Player.new
  end

  def incorrect
    playerlives =- 1
  end



end