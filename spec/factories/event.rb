FactoryBot.define do
  factory :event do
    title Faker::Lorem.characters(10)
    place_title Faker::Lorem.characters(20)
    description Faker::Lorem.sentence(10)
    start_at Time.now
    end_at 1.week.from_now

    after(:create) do |event|
      create(:event_item, event: event)
    end
  end
end
