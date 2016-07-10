class DropTableReads < ActiveRecord::Migration
  def change
    drop_table :reads
  end
end
