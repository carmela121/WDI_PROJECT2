# INDEX
get '/recipes' do 
  if params[:search] && !params[:search].empty?
    @recipes = Recipe.where("title ILIKE :search OR ingredients ILIKE :search OR title ILIKE :search",{ search: "%#{params[:search]}%"})
  else
  @recipes = Recipe.all 
  end
  erb :'recipes/index'
end

# NEW
get '/recipes/new' do
  authorize!
  @recipe = Recipe.new
  erb :'recipes/new'
end

# CREATE

post '/recipes' do
  authorize!
  @recipe = Recipe.new(params[:recipe])
  @recipe.user = current_user
  if @recipe.save
    redirect "/recipes"
  else
    erb :"recipes/new"
  end
end

#SHOW

get '/recipes/:id' do
  @recipe = Recipe.find(params[:id])
  @ingredients = @recipe.ingredients.split(",")
  erb :"recipes/show"
end

# EDIT
get "/recipes/:id/edit" do
  authorize!
  @recipe = Recipe.find(params[:id])
  erb :"recipes/edit"
end

# UPDATE
put '/recipes/:id' do
  authorize!
  @recipe = Recipe.find(params[:id])
  if @recipe.update(params[:recipe])
    redirect "/recipes/#{@recipe.id}"
  else
    erb :"recipes/show"
  end
end