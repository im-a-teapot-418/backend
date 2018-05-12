class GenerateQrJob < ApplicationJob
  def perform(facility)
    QrCode.create(facility: facility, code: SecureRandom.uuid)

    ActionCable.server.broadcast "svg_#{facility.id}", facility.svg
  end
end
