#get the form

post '/register' do 
  @user = User.new(params[:user])
  if @user.save
    redirect '/users'
  else
    erb :'authentications/new'
  end
end

