
class Game

  def initialize
    @player_one = Player.new('Player 1')
    @player_two = Player.new('Player 2')
    @current_player = @player_one
  end

  def start_game
    puts '----- NEW TURN -----'
    # @current_player = @player_one
    # Next_turn.new.next_turn(@current_player)
    # score
    # statistics
    # @current_player = @player_two
    # Next_turn.new.next_turn(@current_player)
    # score
    # statistics
    # @current_player = @player_one
    # Next_turn.new.next_turn(@current_player)
    # score
    # statistics

  while @current_player.life > 0
    Next_turn.new.next_turn(@current_player)
    score
    statistics
    if @current_player.eql? @palyer_one 
      @current_player = @player_two
    else 
      @current_player = @player_one
    end
  end

  end

  def statistics
    puts "P1: #{@player_one.life}/3 VS P2: #{@player_two.life}/3"
  end

  def score
    if @player_one.lose_game
      winner(@player_two)
    elsif @player_two.lose_game
      winner(@player_one)
    end
  end

  def winner(current_player)
    puts "#{current_player.name} wins with a score of #{current_player.life}/3"
    puts "----- GAME OVER -----"
    puts "Good bye!"
    exit(0)
  end

end










