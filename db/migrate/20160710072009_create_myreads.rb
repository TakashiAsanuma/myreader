class CreateMyreads < ActiveRecord::Migration[4.2]
  def change
    create_table :myreads do |t|
      t.integer :user_id
      t.integer :channel_id
      t.boolean :enabled

      t.timestamps null: false
    end
    add_index :myreads, :user_id
    add_index :myreads, :channel_id
    add_index :myreads, :enabled
  end
end
