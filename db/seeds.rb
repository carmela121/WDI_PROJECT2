require_relative "../models/user.rb"
require_relative "../models/recipe.rb"
require_relative "../models/category.rb"

User.destroy_all
Recipe.destroy_all
Category.destroy_all

[
  { 
    title: "Chicken Mushroom Dijon", 
    description:"This is a great easy recipe for last-minute guests or a busy weeknight when you want something a little special. You may want to double the sauce and serve it over rice.", 
    ingredients: "1/2 cup milk, 1/3 cup all-purpose flour, 4 skinless, boneless chicken breast halves, pounded to an even thickness, 3 tablespoons vegetable oil, 1 tablespoon butter, 2 cups thinly sliced mushrooms, 2 tablespoons dry white wine (optional), 1 1/2 cups prepared chicken gravy, 1 cup half-and-half, 1 1/2 tablespoons Dijon mustard, salt and ground black pepper to taste",
    user_id: 
    video_url: 
  },
  {
    name: "Snoop Dog",
    photo_url: "http://trace.tv/wp-content/uploads/2015/06/snoop-dogg.jpg",
    nationality: "American"
  }
].each do |user|
  User.create!(user)
end

[
  { 
    name: "John Lennon", 
    photo_url: "http://t2.gstatic.com/images?q=tbn:ANd9GcRIiu_Tkn8HFUCeI0xElCJ6z2I9_LFob9Wx9GyTu7nseMsASMV5Ug", 
    nationality: "British"
  },
  {
    name: "Snoop Dog",
    photo_url: "http://trace.tv/wp-content/uploads/2015/06/snoop-dogg.jpg",
    nationality: "American"
  }
].each do |recipe|
  Recipe.create!(recipe)
end

[
  { 
    name: "John Lennon", 
    photo_url: "http://t2.gstatic.com/images?q=tbn:ANd9GcRIiu_Tkn8HFUCeI0xElCJ6z2I9_LFob9Wx9GyTu7nseMsASMV5Ug", 
    nationality: "British"
  },
  {
    name: ""
    }
].each do |category|
  Category.create!(category)
end