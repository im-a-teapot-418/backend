class GenerateQrJob < ApplicationJob
  def perform(facility)
    QRCode.create(facility: facility, code: SecureRandom.uuid)
    #TODO: Ping facility socket to change qr code.
  end
end
