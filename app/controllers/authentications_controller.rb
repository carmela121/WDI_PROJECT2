#get the form

post '/register' do 
  @user = User.new(params[:user])
  if @user.save
    redirect '/users'
  else
    erb :'authentications/new'
  end
end

#handle the form
post '/register' do 
  @user = User.new(params[:user])
  if @user.save
    session[:user_id] = @user.id
    flash[:success] = "Thanks for registering!"
    redirect '/users'
  else
    erb :'authentications/new'
  end
end

