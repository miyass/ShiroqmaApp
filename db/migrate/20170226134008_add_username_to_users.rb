class AddUsernameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :username, :string
    add_column :users, :graduation, :string
    add_column :users, :college, :string
    add_column :users, :content, :string
  end
end
