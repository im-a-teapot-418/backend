class QrCodesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def validate
    @user = User.find(validate_params.require(:user_id))
    @qr_code = QrCode.find_by(code: validate_params.require(:qr_code))

    @user.with_lock do
      Checkin.create(user: @user, facility: @qr_code.facility)
      @qr_code.make_inactive!
      @user.increment!(:points, 100)
      GenerateQrJob.perform_later(@qr_code.facility, @user)
    end

    render json: { success: true }
  end

  private

  def validate_params
    params.permit(:user_id, :qr_code)
  end

end
