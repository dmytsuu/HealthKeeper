FactoryBot.define do
  factory :appointment do
    patient { nil }
    physician { nil }
    status { 1 }
    attending_day { "2019-05-31" }
    diagnose { "MyText" }
  end
end
