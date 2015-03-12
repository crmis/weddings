# @author Tom Cox <tom.jcox@icloud.com>
# @author Richard Mitchell
class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_action :configure_devise_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception
  # before_action :authenticate_user!




  # This is the rescue for CanCan, if a user cannot access a resouce then it
  # will throw them back to the root.
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to main_app.root_url, :alert => exception.message
  end

  protected

  def configure_devise_permitted_parameters
    registration_params = [:customer_name, :email, :password, :password_confirmation]

    if params[:action] == 'update'
      devise_parameter_sanitizer.for(:account_update) {
        |u| u.permit(registration_params << :current_password)
      }
    elsif params[:action] == 'create'
      devise_parameter_sanitizer.for(:sign_up) {
        |u| u.permit(registration_params)
      }
    end
  end

end
