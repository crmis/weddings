class ExtracatsController < ApplicationController
  before_action :set_extracat, only: [:show, :edit, :update, :destroy]

  # GET /extracats
  def index
    @extracats = Extracat.all
  end

  # GET /extracats/1
  def show
  end

  # GET /extracats/new
  def new
    @extracat = Extracat.new
  end

  # GET /extracats/1/edit
  def edit
  end

  # POST /extracats
  def create
    @extracat = Extracat.new(extracat_params)

    if @extracat.save
      redirect_to @extracat, notice: 'Extracat was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /extracats/1
  def update
    if @extracat.update(extracat_params)
      redirect_to @extracat, notice: 'Extracat was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /extracats/1
  def destroy
    @extracat.destroy
    redirect_to extracats_url, notice: 'Extracat was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_extracat
      @extracat = Extracat.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def extracat_params
      params.require(:extracat).permit(:extratype)
    end
end
