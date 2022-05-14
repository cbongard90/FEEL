class LocationsController < ApplicationController
  def new
    @location = Location.new
    @locations = Location.all
    @packages = Package.all
    @earth_locations = Location.where(environment: "earth")
    @metaverse = Location.where(environment: "metaverse").first
    @space_locations = Location.where(environment: "outer space")
    @markers = @earth_locations.map do |location|
      {
        lat: location.latitude,
        lng: location.longitude,
        info_window: render_to_string(partial: "info_window", locals: { location: location }),
        image_url: helpers.asset_url('logo_color.png')
      }
    end
  end
end
