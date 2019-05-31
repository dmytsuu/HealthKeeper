class Doctor < ApplicationRecord
  devise :database_authenticatable,
         :rememberable,
         :validatable,
         :trackable

  has_many :records
  has_many :patients, through: :records
end
