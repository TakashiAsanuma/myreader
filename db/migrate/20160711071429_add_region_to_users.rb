class AddRegionToUsers < ActiveRecord::Migration[4.2]
  def change
    add_column :users,      :region, :integer, :after => :email
    add_column :categories, :region, :integer, :after => :name
    add_column :channels,   :region, :integer, :after => :name
    add_column :feeds,      :region, :integer, :after => :channel_id
    add_column :myreads,    :region, :integer, :after => :channel_id
  end
end
