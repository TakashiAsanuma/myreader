class RenameDefaultColumnToChannels < ActiveRecord::Migration
  def change
    rename_column :channels, :default, :default_flag
    rename_column :feeds, :default, :default_flag
  end
end
