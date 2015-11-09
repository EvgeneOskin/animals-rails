FactoryGirl.define do
  factory :administrator do
  end

  factory :user do
    email { Faker::Internet.email }
    password 'password'
    password_confirmation 'password'
    # confirmed_at Date.today
  end
end
