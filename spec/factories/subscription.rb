FactoryBot.define do
  factory :subscription do
    title { Faker::Tea.variety }
  end
end
