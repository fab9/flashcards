#game.rb

get "/current_game" do
  erb :current_game
end

post "/current_game" do
  increment_game_counter
  @answer = check_answer?(params[:answer])
  if @answer
    next_card
    increment_correct_answer
  else
    @wrong_answer = "Dumbass"
    increment_incorrect_answer
  end
  erb :current_game
end

get "/current_game/action/:action" do
  increment_game_counter
  check_action(params[:action])
end
