# frozen_string_literal: true

class MessagesController < ApplicationController
  expose :message
  expose :conversation, -> { Conversation.find(params[:conversation_id]) }

  def create
    return unless message.save

    ConversationChannel.broadcast_to conversation, render_to_string(partial: 'conversations/shared/message',
                                                                    locals: { message: message })
  end

  private

  def message_params
    params.require(:message)
          .permit(:content, :conversation_id)
          .merge(user: current_user)
  end
end
