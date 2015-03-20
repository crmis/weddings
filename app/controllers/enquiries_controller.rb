class EnquiriesController < ApplicationController
  before_action :set_enquiry, only: [:show, :edit, :update, :destroy]

  # GET /enquiries
  def index
    @enquiries = Enquiry.all
  end

  # GET /enquiries/1
  def show
  end

  # GET /enquiries/new
  def new
    @enquiry = Enquiry.new
  end

  # GET /enquiries/1/edit
  def edit
  end

  # POST /enquiries
  def create
    @enquiry = Enquiry.new(enquiry_params)

    if @enquiry.save
      redirect_to @enquiry, notice: 'Enquiry was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /enquiries/1
  def update
    if @enquiry.update(enquiry_params)
      redirect_to @enquiry, notice: 'Enquiry was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /enquiries/1
  def destroy
    @enquiry.destroy
    redirect_to enquiries_url, notice: 'Enquiry was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_enquiry
      @enquiry = Enquiry.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def enquiry_params
      params.require(:enquiry).permit(:subject, :e_description)
    end
end
