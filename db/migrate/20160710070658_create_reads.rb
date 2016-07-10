class CreateReads < ActiveRecord::Migration
  def change
    create_table :reads do |t|
      t.integer :user_id
      t.integer :channel_id
      t.boolean :enabled

      t.timestamps null: false
    end
    add_index :reads, :user_id
    add_index :reads, :channel_id
    add_index :reads, :enabled
  end
end
