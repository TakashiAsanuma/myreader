class ConfigController < ApplicationController
  before_action :init_myread 

  def index
  end

  def add
    region = current_user.region
    @categories = Category.where(region: region)
    if params[:category_id].present?
      @channels = Channel.enabled.undefault.where(category_id: params[:category_id], region: region).order("id")
    else
      @channels = Channel.enabled.undefault.where(region: region)
    end
  end

end
