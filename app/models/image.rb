class Image < ApplicationRecord
  has_one_attached :image
  belongs_to :imageable, polymorphic: true
end
