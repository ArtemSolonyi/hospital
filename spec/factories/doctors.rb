FactoryBot.define do
  factory :doctor do
    user_id { FactoryBot.create(:user).id }
  end
end