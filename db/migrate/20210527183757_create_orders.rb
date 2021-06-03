class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.date :delivery_date
      t.integer :product_quantity
      t.date :shipping_date
      t.float :price_cents
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
