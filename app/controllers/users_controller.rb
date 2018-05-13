class UsersController < ApplicationController
  def show
    @user = user.as_json(
      only: [:email, :first_name, :last_name, :points]
    )

    render json: @user
  end

  private

  def user
    User.find(params.require(:id))
  end
end
