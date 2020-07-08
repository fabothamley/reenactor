class RemoveAddressDetailsFromUsers < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :address_line_2, :string
    remove_column :users, :address_line_3, :string
    remove_column :users, :address_town, :string
    remove_column :users, :address_county, :string
    add_column :users, :paid, :boolean
  end
end
