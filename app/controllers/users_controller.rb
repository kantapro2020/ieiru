class UsersController < ApplicationController

  def index
    users = User.all
    render json: { status: 'SUCCESS', data: users }
  end

  def create
    user = User.new(users_params)
    if user.save
      render json: { status: 'SUCCESS', data: User.all }
    else
      render json: { status: 'ERROR', data: user.errors }
    end
  end

  def users_params
    params.require(:user).permit(:name, :latitude, :logitude)
  end
end