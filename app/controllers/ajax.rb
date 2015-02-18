post '/vote/excuse/:id' do
  content_type :json
  vote = Vote.create(excuse_id: params[:id], user_id: current_user.id)
  count = Vote.where(excuse_id: params[:id]).count
  {vote: vote, count: count}.to_json
end

post "/ajax/comment/excuse/:id" do
  comment = Comment.create(content: params[:comment][:content], user_id: current_user.id, excuse_id: params[:id])
  name = comment.user.username
  {comment: comment, name: name}.to_json
end