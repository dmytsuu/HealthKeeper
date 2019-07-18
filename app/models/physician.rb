# frozen_string_literal: true

class Physician < ApplicationRecord
  devise :database_authenticatable,
         :rememberable,
         :validatable,
         :trackable

  has_many :conversations, dependent: :destroy
  has_many :messages, as: :user, dependent: :destroy
  has_many :appointments, dependent: :destroy
  has_many :patients, through: :appointments
end
