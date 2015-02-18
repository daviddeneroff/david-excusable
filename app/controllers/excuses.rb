get '/excuses' do
  @excuses = Excuse.all
  erb :'excuses/all'
end