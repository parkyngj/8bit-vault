class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :name
      t.string :description
      t.string :genre
      t.string :themes
      t.string :main_image_url
      t.string :release_date
      t.integer :platform_id
      t.string :publishers

      t.timestamps null:false
    end
  end
end
