class Myread < ActiveRecord::Base
  belongs_to :user
  belongs_to :channel

  scope :enabled, -> { where(enabled: true) }
  scope :region, ->(region) { where("region = ?", region) }

  delegate :name, to: :channel, prefix: true
  delegate :id,   to: :channel, prefix: true

  validates :user_id,    presence: true
  validates :channel_id, presence: true
  validates :enabled,    inclusion: {in: [true, false]}

  def self.init_myread(user_id)
    if self.where(:user_id => user_id).blank?
      channels = Channel.enabled.default.all
      channels.each do |channel|
        self.create(user_id: user_id, channel_id: channel.id, region: channel.region, enabled: true)
      end
    end
  end

  def self.user_registered(region, user_id)
    self.where(region: region, user_id: user_id).order("id")
  end
end
