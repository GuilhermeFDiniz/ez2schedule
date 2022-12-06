class ChatroomsController < ApplicationController
  def index
    @chatrooms = policy_scope(Chatroom)
  end

  def show
    @chatrooms = policy_scope(Chatroom)
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
    authorize @chatroom
  end
end
