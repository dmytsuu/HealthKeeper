# frozen_string_literal: true

FactoryBot.define do
  factory :physician do
    name { Faker::Name.first_name }
    surname { Faker::Name.second_name }
    email { Faker::Internet.email }
    address { Faker::Address.street_address }
    phone { Faker::PhoneNumber.cell_phone }
    specification { Faker::Lorem.paragraph_by_chars(number: 120) }
    password { 'password' }
    password_confirmation { 'password' }
  end
end
