class Feed < ActiveRecord::Base
  belongs_to :site
  belongs_to :channel

  delegate :name, :to => :site, :prefix => true
 
  scope :default, -> { where(default_flag: true) }
end
