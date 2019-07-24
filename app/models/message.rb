# frozen_string_literal: true

class Message < ApplicationRecord
  belongs_to :user, polymorphic: true
  belongs_to :conversation

  validates :content, presence: true
end
