class ChangeEnumCategoryToIntegerInProducts < ActiveRecord::Migration[6.0]
  def change
    remove_column :products, :category, :string
    add_column :products, :category, :integer
  end
end
