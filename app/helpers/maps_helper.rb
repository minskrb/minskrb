module MapsHelper
  GOOGLE_API_URL = 'https://www.google.com/maps/embed/v1/view'.freeze

  def google_api_coordinate(lat, lon)
    GOOGLE_API_URL + api_params(lat, lon)
  end

  private

  def api_params(lat, lon)
    "?key=#{Rails.application.credentials.google[:maps_api_key]}&center=#{coordinate(lat, lon)}"
  end

  def coordinate(lat, lon)
    (lat && lon) ? [lat, lon].join(',') : I18n.t('.default_lat_and_lon')
  end
end
