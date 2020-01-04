# frozen_string_literal: true

class Parent < ApplicationRecord
  belongs_to :patient
  validates :name, :surname, presence: true
end
