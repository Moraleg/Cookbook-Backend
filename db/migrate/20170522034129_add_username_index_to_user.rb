class AddUsernameIndexToUser < ActiveRecord::Migration[5.0]
  def change
    #we are telling the database that the username has to be unique
    add_index :users, :username, unique: true
  end
end


#might need a rescue state to give an error message
