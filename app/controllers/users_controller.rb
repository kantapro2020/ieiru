class UsersController < ApplicationController

  def index
    users = User.all
    render json: { status: 'SUCCESS', data: users}
  end

  def create
    user = User.find_by( name: users_params[:name])
    if user
      if user.update_attributes(latitude: users_params[:latitude].to_f, longitude: users_params[:longitude].to_f,
       is_home: user.ieiru(users_params[:longitude], users_params[:latitude]))
        render json: { status: 'SUCCESS', data: User.all }
      else
        render json: { status: 'ERROR', data: user.errors }
      end
    else
      user = User.new(users_params)
      if user.save
        # user.update(is_home:user.ieiru(users_params[:longitude],users_params[:latitude]))
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