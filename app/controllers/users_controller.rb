class UsersController < ApplicationController

  def index
    users = User.all
    render json: { status: 'SUCCESS', data: users }
  end

  def create
    user = User.find_by( name: users_params[:name])
    if user.update(users_params[:latitude, :longitude])
      render json: { status: 'SUCCESS', data: User.all }
    else
      render json: { status: 'ERROR', data: user.errors }
    end

    unless user
      user = User.new(users_params)
    end

    if user.save
      render json: { status: 'SUCCESS', data: User.all }
    else
      render json: { status: 'ERROR', data: user.errors }
    end
  end

  private

  def users_params
    params.require(:user).permit(:name, :latitude, :longitude)
  end

end







# def update
#   if current_user.update(user_params)
#     redirect_to root_path
#   else
#     render :edit
#   end
# end