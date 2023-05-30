# Ruby uses get.chmop.to_i to take integer inputs from user.

class Next_turn

  def next_turn (player)
    next_question = Question.new
    next_question.text_question(player.name)
    player_answer = gets.chomp.to_i
    if next_question.test_answer(player_answer)
      puts ' YES! You are correct.'
    else
      puts ' Seriously? No!'
      player.lose_life
    end
  end

end
