FactoryBot.define do
  factory :record do
    patient { nil }
    doctor { nil }
    status { 1 }
    attending_day { "2019-05-31" }
    diagnose { "MyText" }
  end
end
