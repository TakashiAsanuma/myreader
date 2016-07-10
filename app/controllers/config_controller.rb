class ConfigController < ApplicationController
  before_action :init_myread 

  def index
    @categories = Category.all
    if params[:category_id].present?
      @channels = Channel.enabled.where(["category_id = :category_id", {category_id: params[:category_id]}])
    else
      @channels = Channel.enabled.all
    end
  end
end
