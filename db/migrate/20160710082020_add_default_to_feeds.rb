class AddDefaultToFeeds < ActiveRecord::Migration[4.2]
  def change
    add_column :feeds, :default, :boolean
  end
end
