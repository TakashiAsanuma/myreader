class AddDefaultToFeeds < ActiveRecord::Migration
  def change
    add_column :feeds, :default, :boolean
  end
end
