class AddRatingToOrders < ActiveRecord::Migration[6.0]
  def change
    add_reference :ratings, :order, foreign_key: true
  end
end
