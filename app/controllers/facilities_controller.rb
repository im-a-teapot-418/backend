class FacilitiesController < ApplicationController
  def index
    @facilities = Facility.all.as_json(
      only: [:name, :longitude, :latitude]
    )

    render json: @facilities
  end

  def qr
    @facility = Facility.find(params[:facility_id])
    @qr_svg = @facility.svg
  end
end
