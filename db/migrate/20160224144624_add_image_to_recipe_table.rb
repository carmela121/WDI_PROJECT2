class AddImageToRecipeTable < ActiveRecord::Migration
  def change
    add_column :recipes, :images, :text
  end
end
