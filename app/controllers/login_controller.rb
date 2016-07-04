class LoginController < ApplicationController
  skip_before_action :redirect_unless_signed_in

  def index
    if user_signed_in?
      redirect_to feed_index_path, status: 301
    end
  end
end
