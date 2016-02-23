require_relative "../app/models/user.rb"
require_relative "../app/models/recipe.rb"
require_relative "../app/models/category.rb"

User.destroy_all
Recipe.destroy_all
Category.destroy_all

[
  { 
    title: "Chicken Mushroom Dijon", 
    description:"This is a great easy recipe for last-minute guests or a busy weeknight when you want something a little special. You may want to double the sauce and serve it over rice.", 
    ingredients: "1/2 cup milk, 1/3 cup all-purpose flour, 4 skinless, boneless chicken breast halves, pounded to an even thickness, 3 tablespoons vegetable oil, 1 tablespoon butter, 2 cups thinly sliced mushrooms, 2 tablespoons dry white wine (optional), 1 1/2 cups prepared chicken gravy, 1 cup half-and-half, 1 1/2 tablespoons Dijon mustard, salt and ground black pepper to taste",
    user_id: 1,
    video_url: "https://youtu.be/iGrzUtZQtdk"
  },
  {
    title: "Shrimp Lemon Pepper Linguini", 
    description:"So easy to make, done in minutes, and absolutely delicious. Keeps well in the fridge, too!", 
    ingredients: "1 (8 ounce) package linguine pasta, 1 tablespoon olive oil, 6 cloves garlic, minced, 1/2 cup chicken broth, 1/4 cup white wine, 1 lemon, juiced, 1/2 teaspoon lemon zest, salt to taste, 2 teaspoons freshly ground black pepper, 1 pound fresh shrimp, peeled and deveined, 1/4 cup butter, 3 tablespoons chopped fresh parsley, 1 tablespoon chopped fresh basil",
    user_id: 1,
    video_url: "https://youtu.be/zeVuaeG9h4w"
    
  }
].each do |recipe|
  Recipe.create!(recipe)
end

[
  { 
    username: "carcar",
    first_name: "Carmen",
    last_name: "Carmona",
    email: "car@hotmail.com",
    image: "image here"
  }

].each do |user|
  User.create!(user)
end

[
  { 
    name: "Meat and Poultry, Fish and seafood, Fruits and Vegetables, Rice, Pasta, Healthy, Dessert, Bread, Snack, Drink, Salad, World Cuisine" 
    
    }
].each do |category|
  Category.create!(category)
end