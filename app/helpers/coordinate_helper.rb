module CoordinateHelper
  GOOGLE_API_URL = "https://www.google.com/maps/embed/v1/place?key=#{Rails.application.credentials.google[:maps_api_key]}&q=".freeze

  def google_api_coordinate(coordinate)
    URI.escape(GOOGLE_API_URL + coordinate(coordinate))
  end

  private

  def coordinate(coordinate)
    Geocoder.search(coordinate).empty? ? 'Belarus' : coordinate
  end
end
