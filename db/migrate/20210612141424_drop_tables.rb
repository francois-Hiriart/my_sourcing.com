class DropTables < ActiveRecord::Migration[6.0]
  def change
    drop_table :seringues
    drop_table :catheters
    drop_table :bandes
    drop_table :scalpels
  end
end
