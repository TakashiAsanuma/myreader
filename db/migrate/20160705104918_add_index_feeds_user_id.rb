class AddIndexFeedsUserId < ActiveRecord::Migration
  def change
    add_index :feeds, [:user_id]
  end
end
