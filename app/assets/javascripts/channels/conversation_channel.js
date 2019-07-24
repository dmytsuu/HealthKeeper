
$(document).on('turbolinks:load', function() {
  $(function() {
    $('[data-channel-subscribe="conversation"]').each(function(index, element) {
      var $element = $(element),
      conversation_id = $element.data('conversation-id')

      App.cable.subscriptions.create(
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
