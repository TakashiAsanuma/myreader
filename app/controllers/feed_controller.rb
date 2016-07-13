class FeedController < ApplicationController
  before_action :init_myread 

  def index
    region = current_user.region
    @myreads = Myread.enabled.user_registered(region, current_user.id)
    if params[:channel_id].present?
      @feeds = Feed.channel_feeds(params[:channel_id])
    else
      channels = Channel.enabled.default.where(region: region)
      @feeds = Feed.top_feeds(region, channels)
    end
  end
end
