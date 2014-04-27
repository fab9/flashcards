def increment_game_counter
  session[:game_counter] += 1
end

def check_action(action)
  case action
    when "skip"
      next_card
      session[:game_skip_counter] += 1
    when "quit"
      redirect to ("/dashboard")
  end
end

def check_answer?(answer)
  answer == current_card.answer
end

def game_over?
  current_card == nil #session[:current_card] > get_cards.length
end

def increment_correct_answer
  session[:game_correct_answer] += 1
end

def increment_incorrect_answer
  session[:game_incorrect_answer] += 1
end
