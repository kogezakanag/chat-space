class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  before_action :configure_devise_parameter_sanitizer, if: :devise_controller?
  protect_from_forgery with: :exception

  def configure_devise_parameter_sanitizer
    devise_parameter_sanitizer.permit(:sign_up, keys:[:name])
  end
  
  def after_sign_in_path_for(resource)
    root_path
  end

  def after_sign_out_path_for(resource)
    root_path
  end
end
