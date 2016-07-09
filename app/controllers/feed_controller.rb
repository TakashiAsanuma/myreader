require 'feedjira'

class FeedController < ApplicationController
  def index
    @categories = Category.all
    if params[:category_id].present?
      @feeds = Feed.where(["category_id = :category_id", {category_id: params[:category_id]}]).order("published_at DESC")
    else
      @feeds = Feed.all.order("published_at DESC")
    end
  end
end
