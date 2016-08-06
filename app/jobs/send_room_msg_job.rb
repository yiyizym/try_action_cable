class SendRoomMsgJob < ApplicationJob
  queue_as :default

  def perform(*args)
    1.upto(1000) do |i|
      sleep 3
      ActionCable.server.broadcast(
                            'room_channel',
                            title: 'the title',
                            body: "server send #{i}"
      )
      # RoomChannel.broadcast_to(
      #     '1st',
      #     title: 'the title',
      #     body: "server send #{i}"
      # )
    end
    # Do something later
  end
end
