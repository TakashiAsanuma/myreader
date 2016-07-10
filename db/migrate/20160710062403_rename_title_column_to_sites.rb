class RenameTitleColumnToSites < ActiveRecord::Migration
  def change
    rename_column :sites, :category_id, :channel_id
  end
end
