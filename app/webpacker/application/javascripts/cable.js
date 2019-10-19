const ActionCable = require('actioncable-modules');
const dotenv = require('dotenv')
dotenv.config()

const actionCable = ActionCable.createConsumer(process.env.WEBSOCKET_SERVER)

$(document).on('turbolinks:load', function() {
  $(function() {
    $('[data-channel-subscribe="conversation"]').each(function(index, element) {
      var $element = $(element),
      conversation_id = $element.data('conversation-id')

      actionCable.subscriptions.create(
        {
          channel: "ConversationChannel",
          conversation: conversation_id
        },
        {
          received: function(data) {
            $('#message-list').append(data);
          }
        }
      );
    });
  });
})
