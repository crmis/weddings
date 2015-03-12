class ViewingsController < ApplicationController
  respond_to :html, :xml, :json

  before_action :find_room

  def index
    @viewings = Viewing.where("room_id = ? AND end_time >= ?", @room.id, Time.now).order(:start_time)
    respond_with @viewings
  end

  def new
    @viewing = Viewing.new(room_id: @room.id)
  end

  def create
    @viewing =  Viewing.new(params[:viewing].permit(:room_id, :start_time, :user_id, :length))
      if current_user.customer?
        @viewing.user_id = current_user.id
      end
    @viewing.room = @room
    if @viewing.save
      redirect_to room_viewings_path(@room, method: :get)
    else
      render 'new'
    end
  end

  def show
    @viewing = Viewing.find(params[:id])
  end

  def destroy
    @viewing = Viewing.find(params[:id]).destroy
    if @viewing.destroy
      flash[:notice] = "Viewing: #{@viewing.start_time.strftime('%e %b %Y %H:%M%p')} to #{@viewing.end_time.strftime('%e %b %Y %H:%M%p')} deleted"
      redirect_to room_viewings_path(@room)
    else
      render 'index'
    end
  end

  def edit
    @viewing = Viewing.find(params[:id])
  end

  def update
    @viewing = Viewing.find(params[:id])
    # @viewing.room = @room

    if @viewing.update(params[:viewing].permit(:room_id, :start_time, :user_id, :length))
      flash[:notice] = 'Your viewing was updated succesfully'

      if request.xhr?
        render json: {status: :success}.to_json
      else
        redirect_to room_viewings_path(@room)
      end
    else
      render 'edit'
    end
  end

  private

  def save viewing
    if @viewing.save
        flash[:notice] = 'viewing added'
        redirect_to room_viewing_path(@room, @viewing)
      else
        render 'new'
      end
  end

  def find_room
    if params[:room_id]
      @room = Room.find_by_id(params[:room_id])
    end
  end

  # def viewing_params
  #   params.require(:viewing).permit(:user_ID)
  # end

end
