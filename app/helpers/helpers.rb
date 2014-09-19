helpers do
  def nav
    <<-NAVIGATION
<nav>
  <ul>
    <li><a href="/">Home</a></li>
    <li><a href="/users/#{current_user}">Profile</a></li>
    <li><a href="/logout">Logout</a></li>
  </ul>

  <h1>OINKER</h1>
</nav>
    NAVIGATION
  end

  def current_user
    session[:user_id]
  end

  def user_oinks
    @user = User.find(current_user)
    @user.oinks.order(created_at: :desc)
  end

  def gravatar_image
    Digester::Digester.digest(User.find(params[:user_id]).gravatar)
  end
end
