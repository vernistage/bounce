def current_user
  session[:user]
end

def current_user_id
  User.find_by(twitter_handle: current_user).id
end
