class AddTitleToForms < ActiveRecord::Migration
  def change
    add_column :forms, :title, :string
  end
end
