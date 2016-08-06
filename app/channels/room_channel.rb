# Be sure to restart your server when you modify this file. Action Cable runs in a loop that does not support auto reloading.
class RoomChannel < ApplicationCable::Channel
  def subscribed
    stream_from "room_channel"
    # stream_from "room:1st"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def print_log(data)
    p ">>>> #{data['msg']}"
  end
end
