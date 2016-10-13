class CreatePlatforms < ActiveRecord::Migration
  def change
    create_table :platforms do |t|
      t.string :name
      t.string :abbr
      t.string :description
      t.string :icon32x32
      t.string :icon16x16
      t.string :main_image_url
      t.string :install_base
      t.string :original_price
      t.string :release_date

      t.string :gb_id
      t.string :gb_api_detail_url

      t.timestamps null:false
    end
  end
end
