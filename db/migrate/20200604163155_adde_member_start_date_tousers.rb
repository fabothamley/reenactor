class AddeMemberStartDateTousers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :member_start_date, :date
    add_column :users, :member_expiry_date, :date
  end
end
