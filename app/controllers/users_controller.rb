get "/logout" do
  session[:user_id]=nil
  redirect "/"
end

post "/users" do
  @user = User.find_by(username: params[:username])
  redirect "/" unless @user

  if @user.password == Digester::Digester.digest(params[:password])
    session[:user_id] = @user.id
  end

  redirect "/"
end

post "/users/new" do
  @user = User.new
  @user.username = params[:username]
  @user.password = Digester::Digester.digest(params[:password])
  @user.name = params[:name]
  @user.gravatar= params[:email]
  @user.save
  @user.reload

  session[:user_id]=@user.id

  redirect "/"
end
