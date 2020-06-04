class UsersController < ApplicationController

  def index
    users = User.all
    render json: { status: 'SUCCESS', data: users }
  end

  def create
    user = User.new
    if user.save
      render json: { status: 'SUCCESS', data: User.all }
    else
      render json: { status: 'ERROR', data: user.errors }
    end
  end
end


