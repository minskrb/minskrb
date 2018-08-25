class Image < ApplicationRecord
  has_one_attached :photo
  belongs_to :imageable, polymorphic: true

  validates :photo, file_size: { less_than_or_equal_to: 1.megabyte },
            file_content_type: { allow: ['image/jpeg', 'image/png'] },
            if: Proc.new { |object| object.photo_attachment.present? }
end
