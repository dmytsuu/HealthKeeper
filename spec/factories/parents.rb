# frozen_string_literal: true

FactoryBot.define do
  factory :parent do
    name { 'MyString' }
    surname { 'MyString' }
    patient { nil }
  end
end
