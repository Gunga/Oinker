post '/followers/:user_id' do
  Follower.create(user_id: params[:user_id], follower_id: current_user)

  redirect "/users/#{params[:user_id]}"
end

# could be a DELETE to '/followers' instead of a POST to '/unfollow'
post '/unfollow/:user_id' do
  # seems weird to need a .first here; is there a better way to retrieve the first
  #  listing?
  Follower.where(follower_id:current_user, user_id:params[:user_id]).first.destroy

  redirect "/users/#{params[:user_id]}"
end
