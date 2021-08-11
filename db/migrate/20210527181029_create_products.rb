class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :model
      t.text :description
      t.float :unit_price_cents
      t.integer :available_quantity
      t.string :brand
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
