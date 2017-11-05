class RenameTitleColumnToSites < ActiveRecord::Migration[4.2]
  def change
    rename_column :sites, :category_id, :channel_id
  end
end
