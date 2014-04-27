#game.rb

get "/current_game" do
  redirect to ("/game_over") if game_over?
  erb :current_game
end

post "/current_game" do
  #redirect to ("/current_game/stat") if game_over?
  increment_game_counter
  @answer = check_answer?(params[:answer])
  if @answer
    next_card
    increment_correct_answer
  else
    @wrong_answer = "Dumbass"
    increment_incorrect_answer
  end
  redirect to ("/game_over") if game_over?
  erb :current_game
end

get "/current_game/action/:action" do
  increment_game_counter
  check_action(params[:action])
  redirect to ("/current_game")
end

get "/game_over" do
  create_user_stats
  delete_game_session
end
