class CreateFeeds < ActiveRecord::Migration
  def change
    create_table :feeds do |t|
      t.integer :user_id, default: 0, null: false
      t.string  :name,                null: false, default: ""
      t.string  :url,                 null: false, default: ""

      t.timestamps null: false
    end
  end
end
