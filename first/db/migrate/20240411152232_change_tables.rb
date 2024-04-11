class ChangeTables < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :username, :string
    remove_column :users, :name
    remove_column :users, :email
    

    add_index :users, :username, unique: true
  end
end

# presence: true, uniqueness: true