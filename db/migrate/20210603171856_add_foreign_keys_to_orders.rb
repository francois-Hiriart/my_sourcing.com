class AddForeignKeysToOrders < ActiveRecord::Migration[6.0]
  def change
    add_reference :orders, :masque, null: false, foreign_key: true
    add_reference :orders, :catheter, null: false, foreign_key: true
    add_reference :orders, :scalpel, null: false, foreign_key: true
    add_reference :orders, :bande, null: false, foreign_key: true
    add_reference :orders, :seringue, null: false, foreign_key: true
  end
end
