def current_user
  @current_user ||= User.find_by_id(session[:user_id])
end

def create_user_stats
  current_user.stats << Stat.create!(
    round_count: current_user.round_count,
    correct_total: session[:game_correct_answer],
    incorrect_total: session[:game_incorrect_answer],
    skip_total: session[:game_skip_counter]
    )
end

def user_stats(round)
  Stat.where(user_id: current_user.id, round_count: round).first
end
