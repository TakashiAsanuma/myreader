class ConfigController < ApplicationController
  before_action :init_myread 

  def index
  end

  def add
    @categories = Category.where(region: current_user.region)
    if params[:category_id].present?
      @channels = Channel.enabled.undefault.where(category_id: params[:category_id], region: current_user.region).order("id")
    else
      @channels = Channel.enabled.undefault.where(region: current_user.region)
    end
  end

end
