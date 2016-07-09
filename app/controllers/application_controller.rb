class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :redirect_unless_signed_in 

  def redirect_unless_signed_in
    return if user_signed_in?

    flash[:notice] = 'You need Login!'
    session[:login_redirect_to] = request.url
    redirect_to root_path
  end

  def after_sign_in_path_for(resource) 
    session[:login_redirect_to] || feed_index_path
  end
end