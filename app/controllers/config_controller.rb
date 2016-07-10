class ConfigController < ApplicationController
  before_action :init_myread 

  def index
  end

  def choise
    @myreads = Myread.where(:user_id => current_user.id)
  end

  def add
    @categories = Category.all
    if params[:category_id].present?
      @channels = Channel.enabled.undefault.where(["category_id = :category_id", {category_id: params[:category_id]}])
    else
      @channels = Channel.enabled.undefault.all
    end
  end
end
