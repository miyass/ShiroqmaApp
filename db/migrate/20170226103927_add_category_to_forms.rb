class AddCategoryToForms < ActiveRecord::Migration
  def change
    add_column :forms, :category, :string
  end
end
