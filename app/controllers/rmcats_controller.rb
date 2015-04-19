# @author Richard Mitchell <https://github.com/mr-mitch>
# @author Tom Cox <https://github.com/koxzi95>
class RmcatsController < ApplicationController
	# @see def resource_not_found
	around_filter :resource_not_found
	before_action :set_rmcat, only: [:show, :edit, :update, :destroy]
	load_and_authorize_resource

	def index
		@rmcats = Rmcat.all
	end

	def show
	end

	def new
		@rmcat = Rmcat.new
	end

	def edit
	end

	def create
		@rmcat = Rmcat.new(rmcat_params)

		if @rmcat.save
			redirect_to @rmcat, notice: 'Room Category was successfully created.'
		else
			render :new
		end
	end

	def update
		if @rmcat.update(rmcat_params)
			redirect_to @rmcat, notice: 'Room Category was successfully updated.'
		else
			render :edit
		end
	end

	def destroy
		@rmcat.destroy
		# If the Rmcat has been sucessfully destroyed
		if @rmcat.destroy
			redirect_to rmcats_url, notice: 'Room Category was successfully destroyed.'
		else
			redirect_to rmcats_url, notice: 'Cannot delete assigned Room Category.'
		end
	end

	private

	def set_rmcat
		@rmcat = Rmcat.find(params[:id])
	end

	# If resource not found redirect to root and flash error.
	def resource_not_found
		yield
	rescue ActiveRecord::RecordNotFound
		redirect_to root_url, :notice => "Room Category not found."
	end

	def rmcat_params
		params.require(:rmcat).permit(:rmtype)
	end
end
