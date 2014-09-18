get '/' do
  # Look in app/views/index.erb
  if session[:user_id]==nil
    erb :welcome
  else
    erb :home
  end
end
