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