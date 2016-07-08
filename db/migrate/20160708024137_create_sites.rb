class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
      t.string :name
      t.string :url
      t.integer :category_id

      t.timestamps null: false
    end
    add_index :sites, :category_id
  end
end
