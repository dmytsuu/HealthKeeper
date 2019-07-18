# frozen_string_literal: true

class MessagesController < ApplicationController
  expose :message

  def create
    message.save
  end

  private

  def message_params
    params.require(:message)
          .permit(:content, :conversation_id)
          .merge(user: current_user)
  end
end
