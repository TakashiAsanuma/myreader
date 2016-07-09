class ConfigController < ApplicationController
  def index
    @categories = Category.all
    if params[:category_id].present?
      @sites = Site.where(["category_id = :category_id", {category_id: params[:category_id]}])
    else
      @sites = Site.all
    end
  end
end
