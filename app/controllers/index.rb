get '/' do
  # Look in app/views/index.erb
  if session[:user_id]==nil
    erb :welcome
  else
    @user = current_user_info
    @oinks = @user.oinks_from_who_i_follow
    erb :home
  end
end
