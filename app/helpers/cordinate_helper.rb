module CordinateHelper
  GOOGLE_API_URL = "https://www.google.com/maps/embed/v1/place?key=#{Rails.application.credentials.google[:maps_api_key]}&q=".freeze

  def google_api_cordinate(cordinate)
    URI.escape(GOOGLE_API_URL + cordinate(cordinate))
  end

  private

  def cordinate(cordinate)
    Geocoder.search(cordinate).empty? ? 'Belarus' : cordinate
  end
end
