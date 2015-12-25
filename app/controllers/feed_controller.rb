require 'feedjira'

class FeedController < ApplicationController
  def index
    @sections = {}
    sites = Site.find(:all)
    sites.each do |site|
      feeds = Feedjira::Feed.fetch_and_parse(site.url)
      @sections[site.name] = feeds.entries.first(5)
    end
  end
end
