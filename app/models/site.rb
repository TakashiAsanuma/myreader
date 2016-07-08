class Site < ActiveRecord::Base
  belongs_to :category
  has_many   :feeds, dependent: :destroy
end
