class CreateLives < ActiveRecord::Migration[6.0]
  def change
    create_table :lives do |t|
      t.string :image,     null: false
      t.timestamps
    end
  end
end
