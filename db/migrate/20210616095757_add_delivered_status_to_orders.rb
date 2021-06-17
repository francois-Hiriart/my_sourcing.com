class AddDeliveredStatusToOrders < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :delivered_status, :boolean, :default => false
  end
end
