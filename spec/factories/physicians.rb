# frozen_string_literal: true

FactoryBot.define do
  factory :physician do
    name { Faker::Name.first_name }
    surname { Faker::Name.second_name }
    email { Faker::Internet.email }
    password { 'password' }
    password_confirmation { 'password' }
  end
end
