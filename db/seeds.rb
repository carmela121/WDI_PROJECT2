require_relative "../models/user.rb"
require_relative "../models/recipe.rb"
require_relative "../models/category.rb"

User.destroy_all
Recipe.destroy_all
Category.destroy_all

[
  { 
    name: , 
    photo_url:, 
    nationality: 
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
    name: "Snoop Dog",
    photo_url: "http://trace.tv/wp-content/uploads/2015/06/snoop-dogg.jpg",
    nationality: "American"
  }
].each do |category|
  Category.create!(category)
end