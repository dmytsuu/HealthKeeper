# frozen_string_literal: true

class Appointment < ApplicationRecord
  belongs_to :patient
  belongs_to :physician

  validates :attendance_date, presence: true

  enum status: %i[requested canceled rejected accepted attended]
end
