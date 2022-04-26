FactoryBot.define do
  factory :user do
    phone_number { Faker::PhoneNumber.cell_phone_in_e164}
    password { Faker::Internet.password }
  end
end