class CreateForms < ActiveRecord::Migration
  def change
    create_table :forms do |t|

      t.text :text
      t.string :text
      t.string :picture
      t.string :illust
      t.string :music
      t.string :movie
      t.integer :user_id
      t.timestamps null: false
    end
  end
end
