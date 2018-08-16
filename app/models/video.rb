class Video < ApplicationRecord
  belongs_to :videoable, polymorphic: true

  validates :youtube_link, presence: true, uniqueness: true, length: { maximum: 128 }
end
