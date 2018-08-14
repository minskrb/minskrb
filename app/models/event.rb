class Event < ApplicationRecord
  validates :title, :place_title, :description, :start_at, :end_at, presence: true
  validates :title, length: { in: 6..20 }
  validates :place_title, length: { maximum: 30 }
  validates :description, length: { minimum: 30 }
  validates_with StartEndTimeValidator

  has_many :items, dependent: :delete_all
  accepts_nested_attributes_for :items, allow_destroy: true
end
