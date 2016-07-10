class ConfigController < ApplicationController
  def index
    @categories = Category.all
    if params[:category_id].present?
      @channels = Channel.where(["category_id = :category_id", {category_id: params[:category_id]}])
    else
      @channels = Channel.all
    end
  end
end
