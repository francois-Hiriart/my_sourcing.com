class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.string :category
      t.integer :quantity
      t.float :unit_price_cents
      t.string :brand
      t.float :average_rating
      t.integer :reference_number
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
