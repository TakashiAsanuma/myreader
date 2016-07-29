class Feed < ActiveRecord::Base
  belongs_to :site
  belongs_to :channel

  delegate :name, to: :site, prefix: true
 
  scope :default, -> { where(default_flag: true) }
  scope :region, ->(region) { where("region = ?", region) }

  def self.channel_feeds(channel_id)
    self.where("channel_id = ?", channel_id).order("published_at DESC").limit(30)
  end

  # return feeds array
  def self.top_feeds(channels)
    feeds = []
    channels.each do |channel|
      feed = self.find_by_channel_id(channel.id)
      feeds << feed if feed.present?
    end
    return feeds
  end
end
