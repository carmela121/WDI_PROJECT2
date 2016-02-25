require_relative "../app/models/user.rb"
require_relative "../app/models/recipe.rb"
require_relative "../app/models/category.rb"

User.destroy_all
Recipe.destroy_all
Category.destroy_all

[
  { 
    username: "carcar",
    first_name: "Carmen",
    last_name: "Carmona",
    email: "car@hotmail.com",
    image: "http://studiomark.com/photography-folder/275folder/Mr.-T.jpg",
    password: 'bumlover'
  }

].each do |user|
  User.create!(user)
end

user_id = User.first.id

[
  { 
    title: "Chicken Mushroom Dijon", 
    description:"This is a great easy recipe for last-minute guests or a busy weeknight when you want something a little special. You may want to double the sauce and serve it over rice.", 
    ingredients: "1/2 cup milk, 1/3 cup all-purpose flour, 4 skinless, boneless chicken breast halves, pounded to an even thickness, 3 tablespoons vegetable oil, 1 tablespoon butter, 2 cups thinly sliced mushrooms, 2 tablespoons dry white wine (optional), 1 1/2 cups prepared chicken gravy, 1 cup half-and-half, 1 1/2 tablespoons Dijon mustard, salt and ground black pepper to taste",
    user_id: user_id,
    video_url: "iGrzUtZQtdk",
    images: "https://i.ytimg.com/vi/iGrzUtZQtdk/mqdefault.jpg"
  },
  {
    title: "Shrimp Lemon Pepper Linguini", 
    description:"So easy to make, done in minutes, and absolutely delicious. Keeps well in the fridge, too!", 
    ingredients: "1 (8 ounce) package linguine pasta, 1 tablespoon olive oil, 6 cloves garlic, minced, 1/2 cup chicken broth, 1/4 cup white wine, 1 lemon, juiced, 1/2 teaspoon lemon zest, salt to taste, 2 teaspoons freshly ground black pepper, 1 pound fresh shrimp, peeled and deveined, 1/4 cup butter, 3 tablespoons chopped fresh parsley, 1 tablespoon chopped fresh basil",
    user_id: user_id,
    video_url: "Zj_Ax2KEUKk",
    images: "https://i.ytimg.com/vi_webp/Zj_Ax2KEUKk/mqdefault.webp"
    
  },
  {
  title: "Bolognese Stuffed Bell Peppers", 
  description:"This Bolognese filling is spicy, meaty, and creamy. If you're in a hurry you can serve it over pasta instead of filling the peppers; just omit the rice or orzo.", 
  ingredients: "1/2 cup cooked rice, 2 tablespoons olive oil, divided, 1/8 cup minced carrots, 1/8 cup celery, 6 bell peppers (any color) stems and seeds removed, cut in half lengthwise, 1/2 pound ground beef, 1/4 pound pancetta or lightly smoked bacon, diced, 1 1/2 cups prepared marinara sauce, 1/4 cup red wine, 1/2 teaspoon red pepper flakes, 1/3 cup heavy cream, 1/2 cup grated Parmesan cheese, divided",
  user_id: user_id,
  video_url: "D_wyhDFuAZE",
  images: "https://i.ytimg.com/vi/D_wyhDFuAZE/mqdefault.jpg"

},
{
  title: "Hearty Vegetable Lasagna", 
  description:"This hearty, vegetable lasagna is the only lasagna my husband will eat. We love it!!! Hope you all enjoy as much as we do.", 
  ingredients: "1 (16 ounce) package lasagna noodles, 1 pound fresh mushrooms, sliced, 3/4 cup chopped green bell pepper, 3/4 cup chopped onion, 3 cloves garlic, minced, 2 tablespoons vegetable oil, 2 (26 ounce) jars pasta sauce, 1 teaspoon dried basil, 1 (15 ounce) container part-skim ricotta cheese, 4 cups shredded mozzarella cheese, 2 eggs, 1/2 cup grated Parmesan cheese",
  user_id: user_id,
  video_url: "_97b02L4w0Y",
  images: "https://i.ytimg.com/vi/_97b02L4w0Y/mqdefault.jpg"
},
{
  title: "Homemade Black Bean Veggie Burgers", 
  description:"You will never want to eat frozen veggie burgers again. These are so easy, and you'll be proud to have created such a vegetarian delight.", 
  ingredients: "1 (16 ounce) can black beans, drained and rinsed, 1/2 green bell pepper, cut into 2 inch pieces, 1/2 onion, cut into wedges, 3 cloves garlic, peeled, 1 egg 1 tablespoon chili powder, 1 tablespoon cumin, 1 teaspoon Thai chili sauce or hot sauce, 1/2 cup bread crumbs",
  user_id: user_id,
  video_url: "_BJoree8urg",
  images: "http://images.media-allrecipes.com/userphotos/720x405/820428.jpg"
},
{
  title: "Fluffy Pancakes", 
  description:"Tall and fluffy. These pancakes are just right. Topped with strawberries and whipped cream, they are impossible to resist.", 
  ingredients: "3/4 cup milk, 2 tablespoons white vinegar, 1 cup all-purpose flour, 2 tablespoons white sugar, 1 teaspoon baking powder, 1/2 teaspoon baking soda, 1/2 teaspoon salt, 1 egg, 2 tablespoons butter, melted cooking spray",
  user_id: user_id,
  video_url: "1HK-p8abRq8",
  images: "https://i.ytimg.com/vi_webp/1HK-p8abRq8/mqdefault.webp"
},
{
  title: "Perfect Roasted Vegetables", 
  description:"Pick a vegetable, any vegetable! Here's a tip for perfect—and perfectly simple—roasted veggies, no recipe required", 
  ingredients: "tomatoes, aubergines, peppers, courgettes, carrots",
  user_id: user_id,
  video_url: "bsGPjEw5-Jk",
  images: "https://i.ytimg.com/vi_webp/bsGPjEw5-Jk/mqdefault.webp"
},
{
  title: "How To Make Mind-Bending Macarons with Pistachios", 
  description:"Macarons made with pistachios?! Bend your friends' minds with these amazing cookies.", 
  ingredients: "3 egg whites, 1/4 cup white sugar, 1 2/3 cups confectioners' sugar, 1 cup finely ground almonds",
  user_id: user_id,
  video_url: "XFjs-o5hMdw",
  images: "https://i.ytimg.com/vi_webp/XFjs-o5hMdw/mqdefault.webp"
},
{
title: "The Best Way to Cook a Steak. Period.", 
description:"Packed with flavor. Predictably perfect. No babysitting required. Make this life-changing steak tonight", 
ingredients: "salt, pepper, olive oil, bay leaf, butter, ribeye steak",
user_id: user_id,
video_url: "dAJq1FoXMFY",
images: "https://i.ytimg.com/vi_webp/dAJq1FoXMFY/mqdefault.webp"
}
].each do |recipe|
  Recipe.create!(recipe)
end

[
  { name: "Meat and Poultry" },
  { name: "Fish and seafood" },
  { name: "Fruits and Vegetables" },
  { name: "Rice" },
  { name: "Pasta" },
  { name: "Healthy" },
  { name: "Dessert" },
  { name: "Bread" },
  { name: "Snack" },
  { name: "Drink" },
  { name: "Salad" },
  { name: "World Cuisine" }
].each do |category|
  Category.create!(category)
end