class Site < ActiveRecord::Base
  belongs_to :channel
  has_many   :feeds, dependent: :destroy

  delegate :default_flag, to: :channel, prefix: true 
  delegate :region, to: :channel, prefix: true 
end
