class Event < ApplicationRecord
  validates :title, :place_title, :place_cord, :description, :start_at, :end_at, presence: true
  validates :title, length: { in: 6..20 }
  validates :place_title, length: { maximum: 30 }
  validates :description, length: { minimum: 30 }
  validate :end_after_start

  private

  def end_after_start
    return if end_at.blank? || start_at.blank?

    errors.add(:end_date, 'must be after the start date') if end_at < start_at
  end
end
