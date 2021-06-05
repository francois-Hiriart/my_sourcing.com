class AddFieldsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :company_name, :string
    add_column :users, :address, :text
    add_column :users, :business_activity, :string
    add_column :users, :phone_number, :string
    add_column :users, :user_name, :string
    add_column :users, :role, :string, default: "buyer"
    add_column :users, :vat_number, :string
    add_column :users, :siret_number, :string
  end
end
