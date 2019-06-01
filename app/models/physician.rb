# frozen_string_literal: true

class Physician < ApplicationRecord
  devise :database_authenticatable,
         :rememberable,
         :validatable,
         :trackable

  has_many :appointments
  has_many :patients, through: :appointments
end
