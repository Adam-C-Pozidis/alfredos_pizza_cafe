class CreateMenuItems < ActiveRecord::Migration[6.0]
  def change
    create_table :menu_items do |t|
      t.string :name
      t.string :food_type
      t.text :description
      t.decimal :price

      t.timestamps
    end
  end
end
