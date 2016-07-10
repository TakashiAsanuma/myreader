require 'feedjira'

class FeedController < ApplicationController
  before_action :init_myread 

  def index
    @myreads = Myread.enabled.where(:user_id => current_user.id)
    if params[:channel_id].present?
      @feeds = Feed.where(["channel_id = :channel_id", {channel_id: params[:channel_id]}]).order("published_at DESC")
    else
      @feeds = Feed.default.all.order("published_at DESC")
    end
  end
end
