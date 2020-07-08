class RemoveMemberStartDateFromTableusers < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :member_start_date, :date
    remove_column :users, :member_expiry_date, :date
  end
end
