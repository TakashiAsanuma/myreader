require 'feedjira'

class FeedController < ApplicationController
  def index
    @channels = Channel.all
    if params[:channel_id].present?
      @feeds = Feed.where(["channel_id = :channel_id", {channel_id: params[:channel_id]}]).order("published_at DESC")
    else
      @feeds = Feed.all.order("published_at DESC")
    end
  end
end
