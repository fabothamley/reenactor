class ChangeColumnType < ActiveRecord::Migration[5.0]
  def change
    change_column :users, :member_start_date, :string
  end
end
