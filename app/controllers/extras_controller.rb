# @author Stacey Rees <https://github.com/staceysmells>
class ExtrasController < ApplicationController
	# @see def resource_not_found
	around_filter :resource_not_found
	before_action :set_extra, only: [:show, :edit, :update, :destroy]

	# GET /extras
	def index
		@extras = Extra.all
	end

	# GET /extras/1
	def show
	end

	# GET /extras/new
	def new
		@extra = Extra.new
	end

	# GET /extras/1/edit
	def edit
	end

	# POST /extras
	def create
		@extra = Extra.new(extra_params)

		if @extra.save
			redirect_to @extra, notice: 'Extra was successfully created.'
		else
			render :new
		end
	end

	# PATCH/PUT /extras/1
	def update
		if @extra.update(extra_params)
			redirect_to @extra, notice: 'Extra was successfully updated.'
		else
			render :edit
		end
	end

	# DELETE /extras/1
	def destroy
		@extra.destroy
		redirect_to extras_url, notice: 'Extra was successfully destroyed.'
	end

	private
	# Use callbacks to share common setup or constraints between actions.
	def set_extra
		@extra = Extra.find(params[:id])
	end

	# If resource not found redirect to root and flash error.
	def resource_not_found
		yield
	rescue ActiveRecord::RecordNotFound
		redirect_to root_url, :notice => "Room Category not found."
	end

	# Only allow a trusted parameter "white list" through.
	def extra_params
		params.require(:extra).permit(:extraimg, :name, :description, :quantity, :price, :extracat_id)
	end
end
