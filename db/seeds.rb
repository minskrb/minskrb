# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# AdminUser.create(email: 'test@admin.com', password: 'minskrbtest')
require 'faker'

20.times do
  Event.create(
    title: Faker::Lorem.characters(10),
    place_title: Faker::Lorem.characters(20),
    description: Faker::Lorem.sentence(10),
    start_at: Time.now,
    end_at: 1.week.from_now
  )
end
