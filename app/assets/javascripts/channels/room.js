App.room = App.cable.subscriptions.create("RoomChannel",
//     {
//     channel: 'RoomChannel',
//     label: '1st'
// },
{
  connected: function() {
    // Called when the subscription is ready for use on the server
      this.perform('print_log', {msg: 'message from client'})
  },

  disconnected: function() {
    // Called when the subscription has been terminated by the server
  },

  received: function(data) {
    // Called when there's incoming data on the websocket for this channel
      var msg = data['title'] + '\n' + data['body'] + '\n';
      console.log(msg);
  }
});
