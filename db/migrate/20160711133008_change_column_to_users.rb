class ChangeColumnToUsers < ActiveRecord::Migration[4.2]
  def change
    change_column :users, :region, :integer, default: 0
  end
end
