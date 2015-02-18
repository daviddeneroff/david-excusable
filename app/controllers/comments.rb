delete '/comments/:id/delete' do
  @comment = Comment.find(params[:id])
  @comment.destroy
  redirect '/excuses'
end

post "/comment/:id/create" do
  p params
  Comment.create(content: params[:comment][:content], user_id: current_user.id, excuse_id: params[:id])
  redirect '/excuses'
end