delete '/users/:id/delete' do
  @user = User.find(params[:id])
  @user.excuses.each {|excuse| excuse.destroy}
  @user.votes.each {|vote| vote.destroy}
  @user.comments.each {|comment| comment.destroy}
  @user.destroy
  redirect '/login'
end

get "/users/:id/edit" do
  @user = User.find(params[:id])
  erb :'user/edit'
end

put "/users/:id/edit" do
  user = User.find(params[:id])
  user.update_attributes(username: params[:username])
  redirect "/user/#{params[:id]}"
end