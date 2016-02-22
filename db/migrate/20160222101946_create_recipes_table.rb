class CreateRecipesTable < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :title
      t.text   :description
      t.string :ingredients
      t.integer :user_id
      t.string :video_url
    end
  end
end
