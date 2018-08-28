class Event < ApplicationRecord
  has_many :event_items, dependent: :destroy
  has_many :event_media_partners, dependent: :destroy
  has_many :videos, as: :videoable, dependent: :destroy
  has_many :images, as: :imageable, dependent: :destroy

  accepts_nested_attributes_for :event_items, allow_destroy: true, reject_if: :all_blank
  accepts_nested_attributes_for :event_media_partners, allow_destroy: true, reject_if: :all_blank
  accepts_nested_attributes_for :videos, allow_destroy: true, reject_if: :all_blank
  accepts_nested_attributes_for :images, allow_destroy: true, reject_if: :all_blank

  validates :title, :place_title, :description, :start_at, :end_at, presence: true
  validates :title, length: { in: 6..20 }
  validates :place_title, length: { maximum: 30 }
  validates :place_cordinate, length: { maximum: 150 }
  validates :description, length: { minimum: 30 }
  validates_with StartEndTimeValidator

  def self.upcoming
    where(['end_at > ?', Time.now]).first
  end
end
