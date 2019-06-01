class Patient < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :trackable

  has_many :appointments
  has_many :physicians, through: :appointments
end
