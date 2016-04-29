class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session, only: Proc.new { |c| c.request.format.json? }



  respond_to :json

  before_action :configure_permitted_parameters, if: :devise_controller?

  def angular
    render 'layouts/application'
  end

  private
  def configure_permitted_parameters
    # devise_parameter_sanitizer.for(:sign_up) << :username
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username,:email])
  end
end
