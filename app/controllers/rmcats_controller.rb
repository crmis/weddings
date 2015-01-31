class RmcatsController < ApplicationController
  before_action :set_rmcat, only: [:show, :edit, :update, :destroy]

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
      redirect_to @rmcat, notice: 'Rmcat was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /rmcats/1
  def update
    if @rmcat.update(rmcat_params)
      redirect_to @rmcat, notice: 'Rmcat was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /rmcats/1
  def destroy
    @rmcat.destroy
    redirect_to rmcats_url, notice: 'Rmcat was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rmcat
      @rmcat = Rmcat.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def rmcat_params
      params.require(:rmcat).permit(:rmtype)
    end
end
