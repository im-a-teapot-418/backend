class HistoriesController < ApplicationController
  def show
    @history = user.checkins.joins(:facility).as_json(
      only: [:created_at],
      include: { facility: { only: [:name] } }
    )

    render json: @history
  end

  private

  def user
    User.find(params[:user_id])
  end
end
