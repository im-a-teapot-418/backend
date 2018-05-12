class FacilitiesController < ApplicationController
  def index
    @facilities = Facility.all.as_json(
      only: [:name, :longitude, :latitude]
    )

    render json: @facilities
  end

  def qr
    @facility = Facility.find(params[:facility_id])
    @qr_svg = RQRCode::QRCode.new(@facility.qr.code).as_svg(
      offset: 0,
      color: '000',
      shape_rendering: 'crispEdges',
      module_size: 11
    )
  end
end
