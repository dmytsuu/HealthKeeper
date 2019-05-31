class Record < ApplicationRecord
  belongs_to :patient
  belongs_to :doctor, optional: true

  enum status: %i[requested canceled rejected completed]
end
