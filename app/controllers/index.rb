get '/' do
  session[:user_id] = User.find(1)
  erb :index
end

get '/dashboard' do
  @decks = Deck.all
  erb :dashboard
end

post '/deck_selection' do
  @cards = get_cards(params[:deck])
  session[:current_deck] = Deck.find(params[:deck])
  initialize_game_counter
  initialize_card_counter
  initialize_correct_answer
  initialize_incorrect_answer
  redirect to ("/current_game")
end


