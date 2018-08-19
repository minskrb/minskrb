class EventMediaPartner < ApplicationRecord
  belongs_to :event
  has_one_attached :logo

  validates :title, :link, presence: true, uniqueness: true, length: { maximum: 128 }

  validates :logo, file_size: { less_than_or_equal_to: 1.megabyte },
            file_content_type: { allow: ['image/jpeg', 'image/png'] }
end
