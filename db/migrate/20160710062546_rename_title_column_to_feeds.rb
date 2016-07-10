class RenameTitleColumnToFeeds < ActiveRecord::Migration
  def change
    rename_column :feeds, :category_id, :channel_id
  end
end
