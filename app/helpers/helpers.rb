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

  def current_user_info
    User.find(current_user)
  end

  def user_oinks
    @user = User.find(params[:user_id])
    @user.oinks.order(created_at: :desc)
  end

  def gravatar_image(id)
    Digester::Digester.digest(User.find(id).gravatar)
  end

  def capital_user_real_name
    User.find_by(id: params[:user_id]).name.split.map(&:capitalize).join(' ')
  end

  def profile_handle
    User.find_by(id: params[:user_id]).username
  end

  def follower_count
    User.find_by(id: params[:user_id]).followers.count
  end

  def following_count
    Follower.where(follower_id: params[:user_id]).count
  end

end



























