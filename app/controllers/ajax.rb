post '/vote/excuse/:id' do
  content_type :json
  vote = Vote.create(excuse_id: params[:id], user_id: current_user.id)
  count = Vote.where(excuse_id: params[:id]).count
  {vote: vote, count: count}.to_json
end

post '/test' do
  content_type :json
  p session[:user_id]
  p params[:comment]
  p params[:comment][:content]
  comment = Comment(content: params[:comment][:content], user_id: current_user.id, excuse_id: integer)
  x = 9
  x.to_json
  # comment.to_json
end