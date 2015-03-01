# @author Tom Cox <tom.jcox@icloud.com>
class ApplicationController < ActionController::Base
	# Prevent CSRF attacks by raising an exception.
	# For APIs, you may want to use :null_session instead.
	protect_from_forgery with: :exception
	# before_action :authenticate_user!


	# This is the rescue for CanCan, if a user cannot access a resouce then it
	# will throw them back to the root.
	rescue_from CanCan::AccessDenied do |exception|
		redirect_to main_app.root_url, :alert => exception.message
	end
end
