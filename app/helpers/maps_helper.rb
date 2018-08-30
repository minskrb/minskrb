module MapsHelper
  GOOGLE_API_URL = 'https://www.google.com/maps/embed/v1/place'.freeze

  def google_map(address)
    uri = URI(GOOGLE_API_URL)
    uri.query = URI.encode_www_form(key: Rails.application.credentials.google[:maps_api_key], q: address)
    uri
  end
end
