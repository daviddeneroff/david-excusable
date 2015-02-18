get '/excuses' do
  @excuses = Excuse.all
  erb :'excuses/all'
end

post '/excuses/create' do
  Excuse.create(title: params[:excuse][:title], content: params[:excuse][:content], user_id: session[:user_id])
  redirect '/excuses'
end

get '/excuses/new' do
  erb :'excuses/new'
end

get '/excuses/:id' do
  @excuse = Excuse.find(params[:id])
  erb :'excuses/single'
end

put '/excuses/:id' do
  "sup bro"
end

get '/excuses/:id/edit' do
  @excuse = Excuse.find(params[:id])
  erb :'excuses/edit'
end

delete "/excuses/:id/delete" do
  @excuse = Excuse.find(params[:id])
  @excuse.votes.each {|vote| vote.destroy}
  @excuse.comments.each {|comment| comment.destroy}
  @excuse.destroy
  redirect '/excuses'
end