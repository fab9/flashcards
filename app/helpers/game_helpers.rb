def increment_game_counter
  session[:game_counter] += 1
end

def check_action(action)
  case action
    when "skip"
      next_card
      redirect to ("/current_game")
    when "quit"
      redirect to ("/dashboard")
  end
end

def check_answer?(answer)
  answer == current_card.answer
end

def thing

end
