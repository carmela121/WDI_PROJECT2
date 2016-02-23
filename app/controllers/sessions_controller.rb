#get the login form
get '/login' do 
  @user = User.new
  erb :'sessions/new'
end

# handle the form
post '/login' do 
  # find the user by their email address
  user = User.find_by_email(params[:user][:email])
  # if there is a user, check their password is correct
  if user && user.authenticate(params[:user][:password])
    #log the user in (use " " if we use #{})
    redirect "users/#{user.id}"
  # otherwise render the login form again
  else
    redirect "/login"
end
