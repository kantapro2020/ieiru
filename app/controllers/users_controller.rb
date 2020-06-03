class UsersController < ApplicationController

  def index
    users = User.all
    render json: { status: 'SUCCESS', data: users }
  end

  def create
    user = User.new
    if user.save
      user.all
      render json: { status: 'SUCCESS', data: post }
    else
      render json: { status: 'ERROR', data: post.errors }
    end
  end

  def edit
    
  end

  def update
    
  end

end


