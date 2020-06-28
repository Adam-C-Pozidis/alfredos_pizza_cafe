class CreateCards < ActiveRecord::Migration[6.0]
  def change
    create_table :cards do |t|
      t.integer :quantity
      t.decimal :total
      t.decimal :unit_price
      t.references :menu_item, null: false, foreign_key: true
      t.references :shopping_cart, null: true, foreign_key: true
      t.references :order, null: true, foreign_key: true
      t.timestamps
    end
  end
end
