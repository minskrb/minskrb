require "administrate/field/base"

class LogoField < Administrate::Field::Base
  LOGO_DEFAULT = 'https://www.bigbinary.com/assets/services/ror/rubygem-73b83c79780e7e71d4a159177f2cbdb95b07466141beab0380842122d27f4f93.svg'

  def logo
    data.attached? ? data : LOGO_DEFAULT
  end

  def thumbnail
    data.url(:thumbnail)
  end

  def to_s
    data
  end
end
