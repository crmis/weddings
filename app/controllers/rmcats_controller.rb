class RmcatsController < ApplicationController
  # @see def resource_not_found
  around_filter :resource_not_found
  before_action :set_rmcat, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource

  # GET /rmcats
  def index
    @rmcats = Rmcat.all
  end

  # GET /rmcats/1
  def show
  end

  # GET /rmcats/new
  def new
    @rmcat = Rmcat.new
  end

  # GET /rmcats/1/edit
  def edit
  end

  # POST /rmcats
  def create
    @rmcat = Rmcat.new(rmcat_params)

    if @rmcat.save
      redirect_to @rmcat, notice: 'Room Category was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /rmcats/1
  def update
    if @rmcat.update(rmcat_params)
      redirect_to @rmcat, notice: 'Room Category was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /rmcats/1
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
    # Use callbacks to share common setup or constraints between actions.
    def set_rmcat
      @rmcat = Rmcat.find(params[:id])
    end

    # If resource not found redirect to root and flash error.
    def resource_not_found
      yield
    rescue ActiveRecord::RecordNotFound
      redirect_to root_url, :notice => "Room Category not found."
    end

    # Only allow a trusted parameter "white list" through.
    def rmcat_params
      params.require(:rmcat).permit(:rmtype)
    end
end
