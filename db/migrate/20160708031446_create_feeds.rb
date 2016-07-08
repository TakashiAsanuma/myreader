class CreateFeeds < ActiveRecord::Migration
  def change
    create_table :feeds do |t|
      t.integer :site_id
      t.string :title
      t.string :url
      t.datetime :published_at
      t.string :summary

      t.timestamps null: false
    end
    add_index :feeds, :site_id
  end
end
