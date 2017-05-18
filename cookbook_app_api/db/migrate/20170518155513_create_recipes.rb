class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
      t.string :title
      t.text :ingredients
      t.text :description
      t.string :directions
      t.string :author
      t.integer :servings
      t.text :img

      t.timestamps
    end
  end
end
