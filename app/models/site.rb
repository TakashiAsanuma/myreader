class Site < ActiveRecord::Base
  belongs_to :channel
  has_many   :feeds, dependent: :destroy

  delegate :region, :to => :channel, :prefix => true 
end
