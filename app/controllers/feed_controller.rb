require 'feedjira'

class FeedController < ApplicationController
  def index
    @feeds = Feed.all
    puts @feeds.inspect
    #feeds = Feed.where(user_id: current_user.id)
    #@sections = {}
    #feeds.each do |site|
    #  results = Feedjira::Feed.fetch_and_parse(site.url)
    #  @sections[site.name] = results.entries.first(5)
    #end
  end
end
