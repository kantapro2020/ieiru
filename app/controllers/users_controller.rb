class UsersController < ApplicationController

  def index
    users = User.all
    render json: { status: 'SUCCESS', data: users }
  end

  def create
    user = User.find_by( name: users_params[:name])
    if user
      if user.update(latitude: users_params[:latitude],longitude: users_params[:longitude])
        render json: { status: 'SUCCESS', data: User.all }
      else
        render json: { status: 'ERROR', data: user.errors }
      end
    else
      user = User.new(users_params)
      if user.save
        render json: { status: 'SUCCESS', data: User.all }
      else
        render json: { status: 'ERROR', data: user.errors }
      end
    end
  end

  private

  def users_params
    params.require(:user).permit(:name, :latitude, :longitude)
  end

end