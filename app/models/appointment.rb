# frozen_string_literal: true

class Appointment < ApplicationRecord
  belongs_to :patient
  belongs_to :physician, optional: true

  enum status: %i[requested canceled rejected completed]
end
