class RenameDefaultColumnToChannels < ActiveRecord::Migration[4.2]
  def change
    rename_column :channels, :default, :default_flag
    rename_column :feeds, :default, :default_flag
  end
end
