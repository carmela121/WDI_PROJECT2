# INDEX
get '/recipes' do 
  @recipes = Recipe.all 
  erb :'recipes/index'
end

# NEW
get '/recipes/new' do 
  @recipe = Recipe.new
  erb :'recipes/new'
end

# CREATE

post '/recipes' do
  @recipe = Recipe.new(params[:recipe])
  if @recipe.save
    redirect "/recipes"
  else
    erb :"recipes/new"
  end
end

#SHOW

get '/recipes/:id' do 
  @recipe = Recipe.find(params[:id])
  if @recipe
  erb :'recipes/show'
  else
  redirect "/recipes"
  end
end

# EDIT
get "/recipes/:id/edit" do
  @recipe = Recipe.find(params[:id])
  erb :"recipes/edit"
end

# UPDATE
put '/recipes/:id' do
  @recipe = Recipe.find(params[:id])
  if @recipe.update(params[:recipe])
    redirect "/recipes/#{@recipe.id}"
  else
    erb :"recipes/show"
  end
end