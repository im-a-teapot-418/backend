class FacilitySvgChannel < ApplicationCable::Channel
  def subscribed
    stream_from "svg_#{params[:facility_id]}"
  end

  def unsubscribed
  end
end
