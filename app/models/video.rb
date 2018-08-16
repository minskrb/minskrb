class Video < ApplicationRecord
  validates :youtube_link, presence: true, uniqueness: true, length: { maximum: 128 }
end
