class GenerateQrJob < ApplicationJob
  def perform(facility, user)
    QrCode.create(facility: facility, code: SecureRandom.uuid)

    ActionCable.server.broadcast "svg_#{facility.id}", {svg: facility.svg, username: user.full_name}
  end
end
