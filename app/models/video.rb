class Video < ApplicationRecord
  belongs_to :videoable, polymorphic: true

  validates :youtube_link, presence: true, uniqueness: true, length: { maximum: 128 }
  validates :youtube_link, format: { with: /\A(http(s)?:\/\/)?((w){3}.)?youtu(be|.be)?(\.com)?\/.+/, message: I18n.t('.error_in_validation_youtube_link') }
end
