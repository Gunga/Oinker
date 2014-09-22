get "/users/:user_id" do
  @user_full_name = capital_user_real_name
  @username = profile_handle
  @follower_count = follower_count
  @following_count = following_count
  @user = current_user_info
  erb :"users/profile"
end

get '/users/:user_id/followers' do
  # some redundant logic between this and the next route; maybe abstract
  #  it out into a helper somehow?
  @user = current_user_info
  # try to avoid hard-coding visible strings in Ruby like this; this logic
  #  should be contained either in ERB or front-end code
  @list_name = "Followers"
  @allfollowers = Follower.where(user_id: params[:user_id])
  @users = []

  @allfollowers.each do |follower|
    @users << User.find_by(id: follower.follower).username
  end

  erb :list_users
end

get '/users/:user_id/following' do
  @user = current_user_info
  @list_name = "Following"
  @following_ids = Follower.where(follower_id: params[:user_id])
  @users = []
  @user = current_user_info

  @following_ids.each do |id|
    @users << User.find_by(id: id.user_id).username
  end

  erb :list_users
end

# route should just be '/users' without an ID
get '/all_users' do
  @user = current_user_info
  @list_name = "All Oinkers"
  @users_objects = User.all
  @users = []

  @users_objects.each do |user|
    @users << user.username
  end

  erb :list_users
end
