class AdditionsController < ApplicationController
  before_action :set_addition, only: [:show, :edit, :update, :destroy]

  # GET /additions
  def index
    @additions = Addition.all
  end

  # GET /additions/1
  def show
  end

  # GET /additions/new
  def new
    @addition = Addition.new
  end

  # GET /additions/1/edit
  def edit
  end

  # POST /additions
  def create
    @addition = Addition.new(addition_params)

    if @addition.save
      redirect_to @addition, notice: 'Addition was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /additions/1
  def update
    if @addition.update(addition_params)
      redirect_to @addition, notice: 'Addition was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /additions/1
  def destroy
    @addition.destroy
    redirect_to additions_url, notice: 'Addition was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_addition
      @addition = Addition.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def addition_params
      params.require(:addition).permit(:booking_id, :extra_id, :extra_name)
    end
end
