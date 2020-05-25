###### PLAYER CLASS ######

class Player

  attr_accessor :turn, :lives, :id

  def initialize(id, turn)
    @id = id
    @turn = turn
    @lives = 3
  end

  def answer()
    guess = gets.chomp
  end

end