FactoryBot.define do
  factory :user do
    sequence(:name) { |i| "Name#{i}" }
    age { rand(1..150) }
  end
end
