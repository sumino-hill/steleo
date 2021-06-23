class CreateLives < ActiveRecord::Migration[6.0]
  def change
    create_table :lives do |t|
      t.string :title,     null: false
      t.integer :category_id
      t.integer :atmosphere_id
      t.references :user,         foreign_key:true
      t.timestamps
    end
  end
end
