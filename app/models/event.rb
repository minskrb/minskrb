class Event < ApplicationRecord
	validates :title, :place_title, :place_cord, :description, :start_at, :end_at, presence: true
	validates :title, length: { in: 6..20 }
	validates :place_title, length: { maximum: 30 }
	validates :description, length: { minimum: 30 }
end
