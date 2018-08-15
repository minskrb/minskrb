class Event::MediaPartner < ApplicationRecord
	#has_one_attached :logo
	belongs_to :event

	validates :title, :link, presence: true, uniqueness: true, length: { maximum: 128 }
	#validates :logo, file_size: { less_than: 1.megabyte }, file_content_type: { allow: /^image\/.*/ }
end
