# @author Tom Cox <https://github.com/koxzi95>
# @author Richard Mitchell <https://github.com/mr-mitch>
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


	after_filter :store_location

	def store_location
	  # store last url - this is needed for post-login redirect to whatever the user last visited.
	  return unless request.get?
	  if (request.path != "/users/sign_in" &&
	      request.path != "/users/sign_up" &&
	      request.path != "/users/password/new" &&
	      request.path != "/users/password/edit" &&
	      request.path != "/users/confirmation" &&
	      request.path != "/users/sign_out" &&
	      !request.xhr?) # don't store ajax calls
			if request.format == "text/html" || request.content_type == "text/html"
		    session[:previous_url] = request.fullpath
				# Ensure that session is not 'trapped', needed because of the partial ajax for the calendar.
				session[:last_request_time] = Time.now.utc.to_i
			end
	  end
	end

	def after_sign_in_path_for(resource)
	  session[:previous_url] || root_path
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
