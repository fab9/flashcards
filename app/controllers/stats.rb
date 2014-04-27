get '/user_stats' do
  @rounds = Stat.where(user_id: current_user.id)
  erb :user_stats
end
