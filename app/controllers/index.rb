enable :sessions

get '/' do
  # Look in app/views/index.erb
  erb :index
end

post '/' do
  if User.authenticate(params[:username], params[:password])
   @user = User.find_by_username(params[:username])
    session[:user_id] = @user.id
    redirect '/dashboard'
  else
    redirect '/'
  end
end

get '/dashboard' do
  @decks = Deck.all
  erb :dashboard
end

get '/create_account' do
  erb :create_account
end

post '/create_account' do
  User.create(username: params[:username], password: params[:password], round_count: 1)
  redirect '/'
end

post '/deck_selection' do
  initialize_current_deck(params[:deck])
  initialize_game_counter
  initialize_card_counter
  initialize_correct_answer
  initialize_incorrect_answer
  initialize_skip_count
  @cards = get_cards
  redirect to ("/current_game")
end

get '/log_out' do
  session.delete(:user_id)
  redirect '/'
end
