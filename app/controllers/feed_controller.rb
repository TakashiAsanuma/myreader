require 'feedjira'

class FeedController < ApplicationController
  def index
    feeds = Feedjira::Feed.fetch_and_parse("http://feeds.feedburner.com/TechCrunch/gaming")
    p feeds
    logger.debug(feeds)
    @entry = feeds.entries
    #render :nothing => true
  end
end
