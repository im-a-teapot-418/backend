class Facility < ApplicationRecord
  has_many :qr_codes

  def qr
    qr_codes.active.first
  end
end
