module PlaceCordinateHelper
  GOOGLE_API_URL = 'https://www.google.com/maps/embed/v1/place?key=AIzaSyDc4bU611NyBZ_2PJxohPbLTpQWk7UUiaw&q='.freeze

  def google_api_cordinate(cordinate)
    URI.escape(GOOGLE_API_URL + valid_cordinate(cordinate))
  end

  private

  def valid_cordinate(cordinate)
    Geocoder.search(cordinate).empty? ? 'Belarus' : cordinate
  end
end
