class CreateRecipesCategoriesTable < ActiveRecord::Migration
  def change
    create_join_table :recipes, :categories
  end
end
