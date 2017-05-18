class AddForeignKeyToUsers < ActiveRecord::Migration[5.0]
  def change
      add_column :users, :recipe_id, :integer
  end
end
