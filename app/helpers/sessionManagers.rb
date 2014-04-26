def initialize_game_counter
  session[:game_counter] = 1
end

def initialize_card_counter
  session[:card_counter] = 1
end

def initialize_correct_answer
  session[:correct_answer] = 0
end

def initialize_incorrect_answer
  session[:incorrect_answer] = 0
end
