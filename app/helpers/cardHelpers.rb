def get_cards
  Card.where(deck_id: session[:game_current_deck].id)
end

def current_card
  get_cards[ session[:game_card_counter] - 1 ]
end

def next_card
  session[:game_card_counter] += 1
end


