post '/vote/excuse/:id' do
  content_type :json
  vote = Vote.create(excuse_id: params[:id], user_id: current_user.id)
  count = Vote.where(excuse_id: params[:id]).count
  {vote: vote, count: count}.to_json
end