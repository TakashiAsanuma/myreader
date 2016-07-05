require 'feedjira'

class FeedController < ApplicationController
  def index
    @sections = {}
    #sites = Site.all
    feeds = Feed.where(user_id: current_user.id)
    feeds.each do |site|
      results = Feedjira::Feed.fetch_and_parse(site.url)
      @sections[site.name] = results.entries.first(5)
    end
  end
end
