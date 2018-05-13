class HistoriesController < ApplicationController
  def show
    @history = user.checkins.joins(:facility).order(id: :desc).as_json(
      methods: [:human_date],
      only: [],
      include: { facility: { only: [:id, :name, :longitude, :latitude] } }
    )

    render json: @history
  end

  private

  def user
    User.find(params[:user_id])
  end
end
