# frozen_string_literal: true

class Appointment < ApplicationRecord
  belongs_to :patient
  belongs_to :physician

  validates :attendance_date, presence: true
  enum status: %i[requested canceled rejected accepted attended]

  def conversation
    Conversation.find_or_create_by(patient: patient, physician: physician)
  end
end
