class ChangeColumnToUsers < ActiveRecord::Migration
  def change
    change_column :users, :region, :integer, default: 0
  end
end
