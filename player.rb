=begin
Ruby has no pre/post increment/decrement operator. For instance, x++ or x-- will fail to parse. 
Ruby uses +=/-= operator instead.
=end

class Player

  attr_accessor :name, :life

  def initialize (name)
    @name = name
    @life = 3
  end

  def lose_life
    @life -=1
  end

  def lose_game
    @life == 0
  end

end




