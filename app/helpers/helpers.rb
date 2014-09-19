helpers do
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
end
