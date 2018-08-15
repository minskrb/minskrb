class Event::MediaPartner < ApplicationRecord
	has_one_attached :logo
	belongs_to :event
end
