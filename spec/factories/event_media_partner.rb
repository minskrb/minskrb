FactoryBot.define do
  factory :event_media_partner do
    title Faker::Lorem.characters(30)
    link Faker::Lorem.characters(30)
    event
  end
end
