# frozen_string_literal: true

class Disease < ApplicationRecord
  SYMPTOMS = %w[nausea coughing rash insomnia cysts vomiting sneezing sweating hyper_sensitivity abscesses tumours
                diarrhoea skin_lesions seizures hemorrhagic_shock]

  has_and_belongs_to_many :appointments

  scope :by_symptoms, ->(symptoms) { where('symptoms @> Array[?]::varchar[]', symptoms) if symptoms&.any? }
end
