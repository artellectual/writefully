class ApplicationController < ActionController::Base
  add_flash_types :danger, :info, :warning, :success

  def current_user
    @current_user ||= User.where(id: session[:user_id]).first
  end

  helper_method :current_user
end
