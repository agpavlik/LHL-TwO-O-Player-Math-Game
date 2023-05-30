=begin
  Generating Random Numbers in Ruby
  rand(1..10) - generate random numbers from a lower limit (1), up to (and including) the upper limit (10).
  rand(1...10) - generate random numbers from a lower limit, up to (but not including) the upper limit.
  rand(1.5..3.0) - range can also be between floating point values
  rand(-5..-1) - can also use negative range limits
  rand() - get random numbers between 0.0 and 1.0 (not inclusive).
=end


class Question

  attr_accessor :num_one, :num_two

  def initialize
    @num_one = rand(1..20)
    @num_two = rand(1..20)
  end

  def text_question(name)
    puts "#{name}: What does #{@num_one} plus #{@num_two} equal?"
  end

  def test_answer(player_answer)
    player_answer == @num_one + @num_two
  end

end
