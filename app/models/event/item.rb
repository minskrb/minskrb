class Event::Item < ApplicationRecord
  enum item_type: [ :talk, :coffee_break, :registration, :after_party, :lunch ]
  validates :title, :item_type, :start_at, :end_at, presence: true
  validates :title, length: { in: 10..100 }
  validates :description, length: { maximum: 200 }
  validates :speaker_name, length: { maximum: 50 }
  validates_with StartEndTimeValidator

  belongs_to :event
end
