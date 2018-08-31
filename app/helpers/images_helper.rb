module ImagesHelper
  DEFAULT_IMAGE = '/assets/images/ruby.svg'.freeze

  def photo(image)
    image&.photo&.attached? ? image.photo : DEFAULT_IMAGE
  end
end
