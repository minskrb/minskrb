class EventItem < ApplicationRecord
  belongs_to :event
  has_one :video, as: :videoable, dependent: :destroy
  has_one :image, as: :imageable, dependent: :destroy
  accepts_nested_attributes_for :video, allow_destroy: true, reject_if: :all_blank
  accepts_nested_attributes_for :image, allow_destroy: true, reject_if: :all_blank

  validates :title, :item_type, :start_at, :end_at, presence: true
  validates :title, length: { in: 10..100 }
  validates :description, length: { maximum: 200 }
  validates :speaker_name, length: { maximum: 50 }
  validates_with StartEndTimeValidator

  enum item_type: [ :talk, :coffee_break, :registration, :after_party, :lunch ]

  scope :speakers, -> { where.not(speaker_name: [nil, ""]) }
  scope :talks, -> { where(item_type: :talk) }

  scope :schedule, -> { order(:start_at) }
end
