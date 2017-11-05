class RenameTitleColumnToFeeds < ActiveRecord::Migration[4.2]
  def change
    rename_column :feeds, :category_id, :channel_id
  end
end
