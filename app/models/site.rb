class Site < ActiveRecord::Base
  belongs_to :channel
  has_many   :feeds, dependent: :destroy
end
