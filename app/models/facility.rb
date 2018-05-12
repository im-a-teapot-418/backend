class Facility < ApplicationRecord
  has_many :qr_codes

  def qr
    qr_codes.active.first
  end

  def svg
    RQRCode::QRCode.new(qr.code).as_svg(
      offset: 0,
      color: '000',
      shape_rendering: 'crispEdges',
      module_size: 11
    )
  end
end
