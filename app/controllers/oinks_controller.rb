get '/oinks' do
  erb :'oinks/new'
end

# shouldn't need the '/new' portion; just POST to '/oinks'
post '/oinks/new' do
  @oink = Oink.new
  @oink.message = params[:oink]
  @oink.user_id = current_user
  @oink.save

  redirect "/"
end
