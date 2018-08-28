class EventMediaPartner < ApplicationRecord
  belongs_to :event

  validates :title, :link, presence: true, uniqueness: true, length: { maximum: 128 }
end
