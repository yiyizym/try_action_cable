class RoomController < ApplicationController
  def show
    SendRoomMsgJob.perform_later
  end

end
