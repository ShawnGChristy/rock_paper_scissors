module RockPaperScissorsHelper

  # All the move options
  PLAYS = ['rock', 'paper', 'scissors']

  # Winning combinations
  WINS = [
    ['rock', 'scissors'],
    ['paper', 'rock'],
    ['scissors', 'paper']
  ]

private

   def computer_select_move
    PLAYS.sample
  end


  def get_winner(human_move, computer_move)
    if human_move == computer_move
      "It's a draw!"
    else
      if WINS.include?([human_move, computer_move])
        "You win! #{human_move.capitalize} beats #{computer_move.capitalize}!"
      else
        "You lose. :( #{computer_move.capitalize} beats #{human_move.capitalize}."
      end #if
    end # if
  end # get_winner

end