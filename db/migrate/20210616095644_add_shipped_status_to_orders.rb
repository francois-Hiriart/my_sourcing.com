class AddShippedStatusToOrders < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :shipped_status, :boolean, :default => false
  end
end
