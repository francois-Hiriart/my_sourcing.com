class DropMasksTable < ActiveRecord::Migration[6.0]
  def change
    drop_table :masks
  end
end
