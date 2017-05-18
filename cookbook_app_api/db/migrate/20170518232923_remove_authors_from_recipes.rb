class RemoveAuthorsFromRecipes < ActiveRecord::Migration[5.0]
  def change
      remove_column :recipes, :author
  end
end
