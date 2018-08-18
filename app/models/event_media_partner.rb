class EventMediaPartner < ApplicationRecord
  belongs_to :event
  has_one_attached :logo

  validates :title, :link, presence: true, uniqueness: true, length: { maximum: 128 }
end
