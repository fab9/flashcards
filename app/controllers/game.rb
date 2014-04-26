#game.rb

get "/current_game" do
  erb :current_game
end

post "/current_game" do
  increment_game_counter
  @answer = check_answer?(params[:answer])
  next_card if @answer
  redirect to ("/current_game")
end

get "/current_game/action/:action" do
  increment_game_counter
  check_action(params[:action])
end
