class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protect_from_forgery with: :exception

  # respond_to :json

  protected

  def configure_permitted_parameters
    # added_attrs = [:username, :email, :password, :password_confirmation, :remember_me]
    devise_parameter_sanitizer.for(:sign_up)            { |u| u.permit(:username, :email, :password, :password_confirmation) }
    devise_parameter_sanitizer.for(:sign_in)            << :username
    devise_parameter_sanitizer.for(:account_update)     << :username
  end
end
