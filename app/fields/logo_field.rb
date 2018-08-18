require "administrate/field/base"

class LogoField < Administrate::Field::Base
  DEFAULT_LOGO = File.read(Rails.root.join('public/default_logo.txt'))

  def logo
    data.attached? ? data : DEFAULT_LOGO
  end

  def thumbnail
    data.url(:thumbnail)
  end

  def to_s
    data
  end
end
