class ChangeColumnToUser < ActiveRecord::Migration[4.2]
  def change
    add_index :users, :region
    add_index :categories, :region
    add_index :channels, :region
    add_index :feeds, :region
    add_index :myreads, :region
  end
end
