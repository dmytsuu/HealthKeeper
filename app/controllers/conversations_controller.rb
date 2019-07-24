# frozen_string_literal: true

class ConversationsController < ApplicationController
  expose :conversation
  expose :conversations, -> { current_user.conversations }
  expose :message, parent: :conversation, id: :message_id
  expose :messages, -> { conversation.messages }

  def index; end

  def show; end
end
