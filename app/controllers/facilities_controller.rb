class FacilitiesController < ApplicationController
  def index
    @facilities = Facility.all.as_json(
      only: [:name, :longitude, :latitude]
    )

    render json: @facilities
  end
end
