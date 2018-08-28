FactoryBot.define do
  factory :event do
    title Faker::Lorem.characters(10)
    place_title Faker::Lorem.characters(20)
    cordinate Faker::Address.street_address
    description Faker::Lorem.sentence(10)
    start_at 1.day.from_now
    end_at 1.week.from_now

    trait :with_items do
      after(:create) do |event|
        create(:event_item, event: event)
      end
    end

    trait :with_media_partners do
      after(:create) do |event|
        create(:event_media_partner, event: event)
      end
    end
  end
end
