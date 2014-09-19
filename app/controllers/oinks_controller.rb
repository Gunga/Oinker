get '/oinks' do
  erb :'oinks/new'
end

post '/oinks/new' do
  @oink = Oink.new
  @oink.message = params[:oink]
  @oink.user_id = current_user
  @oink.save

  redirect "/"
end
