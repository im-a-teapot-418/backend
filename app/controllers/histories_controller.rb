class HistoriesController < ApplicationController
  def show
    @history = user.checkins.joins(:facility.select(:created_at, facility: [:name]))
    render json: @history
  end

  private

  def user
    User.find(params[:user_id]) or not_found
  end
end
