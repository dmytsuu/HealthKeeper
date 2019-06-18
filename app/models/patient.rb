# frozen_string_literal: true

class Patient < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :trackable

  has_many :appointments, dependent: :destroy
  has_many :physicians, through: :appointments
end
