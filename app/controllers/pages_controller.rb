# @author Tom Cox <tom.jcox@icloud.com>
class PagesController < ApplicationController
	# @see def resource_not_found
	around_filter :resource_not_found
	# def home
	# end
	private
	# If resource not found redirect to root and flash error.
	# => For pages this will rarely be needed as it should 404.
	def resource_not_found
		yield
	rescue ActiveRecord::RecordNotFound
		redirect_to root_url, :notice => "Page not found."
	end
end
