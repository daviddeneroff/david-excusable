get '/' do
  redirect '/login'
end

get '/login' do
  erb :login
end

post '/login' do
  if @user = User.find_by(username: params[:user][:username]).try(:authenticate, params[:user][:password])
    session[:user_id] = @user.id
    redirect "/excuses"
  else
    redirect '/login'
  end
end

post '/signup' do
  User.create(params[:user])
  redirect '/login'
end