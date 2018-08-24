require "administrate/field/base"

class LogoField < Administrate::Field::Base
  DEFAULT_IMAGE = '/assets/images/ruby.svg'.freeze
  AVAILABLE_SIZES = [100, 300, 500, 1000].freeze

  AVAILABLE_SIZES.each do |size|
    define_method :"x#{size}" do
      image_url(-> { data.variant(resize: "#{size}x") })
    end
  end

  def original_url
    image_url(-> { data })
  end

  private

  def image_url(proc)
    data&.attached? ? proc.call : DEFAULT_IMAGE
  end
end
