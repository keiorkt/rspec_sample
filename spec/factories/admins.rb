FactoryBot.define do
  factory :admin do
    sequence(:email) { |i| "sample#{i}@email.mail" }
    password { 'password' }
  end
end

