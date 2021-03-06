class EventMediaPartner < ApplicationRecord
  belongs_to :event

  validates :title, :link, presence: true, length: { maximum: 128 }
end
