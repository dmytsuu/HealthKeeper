# frozen_string_literal: true

class Appointment < ApplicationRecord
  belongs_to :patient
  belongs_to :physician

  validates :date, :time, presence: true
  enum status: { requested: 0, canceled: 1, rejected: 2, accepted: 3, attended: 4 }

  def conversation
    Conversation.find_or_create_by(patient: patient, physician: physician)
  end
end
