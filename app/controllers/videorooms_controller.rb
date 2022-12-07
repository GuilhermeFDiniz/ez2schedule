class VideoroomsController < ApplicationController
  before_action :set_room, only: [:show, :destroy]
  def show
    opentok = OpenTok::OpenTok.new(ENV["VONAGE_KEY"], ENV["VONAGE_SECRET_KEY"])
    @token = opentok.generate_token(@room.vonage_session_id, { name: current_user.first_name })
  end

  def new
    @room = Room.new
  end

  def create
    @room = Room.new(room_params)
    if @room.save
      redirect_to @room
    else
      redirect_to root_path
    end
  end

  private

  def set_room
    @room = Room.find(params[:id])
  end

  def room_params
    params.require(:room).permit(:session_id, :name)
  end
end
