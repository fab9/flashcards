def get_cards
  Card.where(deck_id: session[:current_deck].id)
end

def current_card
  get_cards[ session[:card_counter] ]
end

def next_card
  session[:card_counter] += 1
end


