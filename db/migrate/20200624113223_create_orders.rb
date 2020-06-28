class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :phone_number
      t.decimal :subtotal
      t.decimal :total
      t.references :user, null: true, foreign_key: true

      t.timestamps
    end
  end
end
