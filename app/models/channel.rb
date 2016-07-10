class Channel < ActiveRecord::Base
  belongs_to :cayegory
  has_many   :sites, dependent: :destroy
  has_many   :feeds, dependent: :destroy
end
