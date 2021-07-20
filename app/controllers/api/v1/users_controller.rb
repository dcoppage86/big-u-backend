class Api::V1::UsersController < ApplicationController

  def index
    @users = User.all

    render json: @users
  end
  

  def create
    @user = User.new(user_params)
    if user.save
      render json: @user
    else
      render json: { @user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy 
    @user = User.find(params[:id])
    if @user
      @user.destroy
      render json: @user, status: :accepted
    else
      render json: { errors: @user.errors.full_messages}
    end
  end
  
  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :childs_name, :username, :email, :password, :collection_id)
  end
  
end
