def initialize_current_deck(deck)
  session[:game_current_deck] = Deck.find(deck)
end

def initialize_game_counter
  session[:game_counter] = 1
end

def initialize_card_counter
  session[:game_card_counter] = 1
end

def initialize_correct_answer
  session[:game_correct_answer] = 0
end

def initialize_skip_count
  session[:game_skip_counter] = 0
end

def initialize_incorrect_answer
  session[:game_incorrect_answer] = 0
end
