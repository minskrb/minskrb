FactoryBot.define do
  factory :event_item do
    title Faker::Lorem.characters(30)
    item_type :talk
    description Faker::Lorem.sentence(10)
    speaker_name Faker::Name.name
    start_at Time.now
    end_at 1.week.from_now
    event
  end
end
