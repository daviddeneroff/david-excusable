def current_user
  p session
  if session[:user_id]
    return User.find(session[:user_id])
  else
    return nil
  end
end
