class FeedController < ApplicationController
  before_action :init_myread 

  def index
    region = current_user.region
    @myreads = Myread.enabled.region(region).where(:user_id => current_user.id)
    if params[:channel_id].present?
      @feeds = Feed.where(["channel_id = :channel_id", {channel_id: params[:channel_id]}]).order("published_at DESC")
    else
      @feeds = Feed.default.region(current_user.region).all.order("published_at DESC")
    end
  end
end
