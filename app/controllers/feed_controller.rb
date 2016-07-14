class FeedController < ApplicationController
  before_action :init_myread 

  def index
    region = current_user.region
    @myreads = Myread.enabled.user_registered(region, current_user.id)
    if params[:channel_id].present?
      @feeds = Feed.channel_feeds(params[:channel_id])
    else
      channels = Channel.top_channels(region)
      @feeds = Feed.top_feeds(channels)
    end
  end
end
