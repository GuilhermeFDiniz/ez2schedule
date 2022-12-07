class VideoroomsController < ApplicationController
  before_action :set_room, only: [:show, :destroy]
  # def show
  #   opentok = OpenTok::OpenTok.new(ENV["VONAGE_KEY"], ENV["VONAGE_SECRET_KEY"])
  #   @token = opentok.generate_token(@room.vonage_session_id, { name: current_user.first_name })
  # end

  # def new
  #   @room = Videoroom.new
  # end

  def show
authorize @room
  end

  def create
    @appointment = Appointment.find(params[:appointment_id])
    if @appointment.videoroom.nil?
      @room = Videoroom.new
      @room.appointment_id = @appointment.id
      if @room.save
        redirect_to appointment_videoroom_path(@appointment, @room)
      else
        redirect_to root_path
      end
    else
      @room = @appointment.videoroom
      redirect_to appointment_videoroom_path(@appointment, @room)
    end
    authorize @room

  end

  private

  def set_room
    @room = Videoroom.find(params[:id])
  end

  def room_params
    params.require(:room).permit(:vonage_session_id, :name)
  end
end
