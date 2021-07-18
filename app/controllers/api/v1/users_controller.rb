class Api::V1::UsersController < ApplicationController

  def index
    @users = User.all

    render json: @users
  end
  

  def create
    @user = User.new(user_params)
    if user.save
      render json: @user, status: created, location: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end
  
  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :username, :email, :password, :image_url)
  end
  
end
