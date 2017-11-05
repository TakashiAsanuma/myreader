class CreateChannels < ActiveRecord::Migration[4.2]
  def change
    create_table :channels do |t|
      t.string :name
      t.integer :category_id
      t.boolean :default
      t.boolean :enabled

      t.timestamps null: false
    end
    add_index :channels, :category_id
    add_index :channels, :default
    add_index :channels, :enabled
  end
end
