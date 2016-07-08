require 'feedjira'

class FeedController < ApplicationController
  def index
    @feeds = Feed.all
  end
end
