# @author Tom Cox <https://github.com/koxzi95>
class EnquiriesController < ApplicationController
	# @see def resource_not_found
	around_filter :resource_not_found
	before_action :set_enquiry, only: [:show, :edit, :update, :destroy]
	# This is the CanCan helper for auth.
	# The skip is so users can view the rooms but nothing else.
	load_and_authorize_resource

	def index
		@enquiries = Enquiry.all
	end

	def show
	end

	def new
		@enquiry = Enquiry.new
		render 'pages/contactus'
	end

	def edit
	end

	def create
		@enquiry = Enquiry.new(enquiry_params)
		if current_user.customer?
			@enquiry.user_id = current_user.id
		end
		if @enquiry.save
			redirect_to '/pages/contactus', notice: 'Enquiry was successfully sent.'
		else
			render :new
		end
	end

	def update
		if @enquiry.update(enquiry_params)
			redirect_to @enquiry, notice: 'Enquiry was successfully updated.'
		else
			render :edit
		end
	end

	def destroy
		@enquiry.destroy
		redirect_to enquiries_url, notice: 'Enquiry was successfully destroyed.'
	end

	private

	def set_enquiry
		@enquiry = Enquiry.find(params[:id])
	end

	# If resource not found redirect to root and flash error.
	def resource_not_found
		yield
	rescue ActiveRecord::RecordNotFound
		redirect_to root_url, :notice => "Room not found."
	end

	def enquiry_params
		params.require(:enquiry).permit(:subject, :e_description, :user_id)
	end
end
