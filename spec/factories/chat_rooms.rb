# frozen_string_literal: true

FactoryBot.define do
  factory :conversation do
    patient { nil }
    physician { nil }
  end
end
