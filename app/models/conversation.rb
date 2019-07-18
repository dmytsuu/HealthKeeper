# frozen_string_literal: true

class Conversation < ApplicationRecord
  belongs_to :patient
  belongs_to :physician
  has_many :messages, dependent: :destroy
end
