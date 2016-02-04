require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'
require 'erb'

require_relative 'helpers/rock_paper_scissors.rb'

helpers RockPaperScissorsHelper

get '/'  do
	erb :index
end

post '/result' do

	human_move=params[:move]

  	#binding.pry
  	computer_move=computer_select_move
  	winner = get_winner(human_move, computer_move)

  	erb :result, locals: {game_result:winner}

end