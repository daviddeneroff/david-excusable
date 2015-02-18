delete '/comments/:id/delete' do
  @comment = Comment.find(params[:id])
  @comment.destroy
  redirect '/excuses'
end