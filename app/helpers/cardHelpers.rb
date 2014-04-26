def get_cards(deck_id)
  Card.where(deck_id: deck_id)
end

def current_card
  Card.find(session[:card_counter])
end

def next_card
  session[:card_counter] += 1
end
