post '/followers/:user_id' do
  Follower.create(user_id: params[:user_id], follower_id: current_user)

  redirect "/users/#{params[:user_id]}"
end

post '/unfollow/:user_id' do
  Follower.where(follower_id:current_user, user_id:params[:user_id]).first.destroy

  redirect "/users/#{params[:user_id]}"
end
