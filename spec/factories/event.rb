FactoryBot.define do
  factory :event do
    title Faker::String.random(6..20)
    place_title Faker::String.random(1..30)
    description Faker::String.random(30..100)
    start_at Time.now
    end_at 1.week.from_now
  end
end
