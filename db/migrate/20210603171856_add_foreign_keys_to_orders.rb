class AddForeignKeysToOrders < ActiveRecord::Migration[6.0]
  def change
    add_reference :orders, :product, polymorphic: true
  end
end
