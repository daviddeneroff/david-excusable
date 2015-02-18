get '/excuses' do
  @excuses = Excuse.all
  erb :'excuses/all'
end

get '/excuses/:id' do
  @excuse = Excuse.find(params[:id])
  erb :'excuses/single'
end