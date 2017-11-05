class AddColumnToFeeds < ActiveRecord::Migration[4.2]
  def change
    add_column :feeds, :category_id, :integer, :after => :site_id
    add_index :feeds, :category_id
  end
end
