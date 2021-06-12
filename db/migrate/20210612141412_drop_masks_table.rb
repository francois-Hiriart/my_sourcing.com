class DropMasksTable < ActiveRecord::Migration[6.0]
  def change
    drop_table :masques
  end
end
