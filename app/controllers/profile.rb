get "/users/:user_id" do
  @user_full_name = capital_user_real_name
  @username = profile_handle
  @follower_count = follower_count
  @following_count = following_count
  @user = current_user_info
  erb :"users/profile"
end
