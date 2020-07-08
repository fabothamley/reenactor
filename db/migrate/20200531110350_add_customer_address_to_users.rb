class AddCustomerAddressToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :address_line_1, :string
    add_column :users, :address_line_2, :string
    add_column :users, :address_line_3, :string
    add_column :users, :address_town, :string
    add_column :users, :address_county, :string
    add_column :users, :address_postcode, :string
    add_column :users, :age, :integer
    add_column :users, :member_start_date, :date
    add_column :users, :member_expiry_date, :date
  end
end
