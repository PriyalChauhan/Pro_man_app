class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  # helper_method :current_user

  # private 
  # def current_user
  #   current_user ||= User.find(session[:user_id]) if session[:user_id]
  # end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :avatar])
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :avatar]) 
  end
end
