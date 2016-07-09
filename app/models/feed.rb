class Feed < ActiveRecord::Base
  belongs_to :site
  delegate :name, :to => :site, :prefix => true
end
