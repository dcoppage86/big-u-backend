class Api::V1::UsersController < ApplicationController
  before_action :get_user, only: [:show, :destroy]

  def index
    @users = User.all
    render json: @users
  end
  
  def show
    user_json = UserSerializer.new(@user).serialized_json
    render json: user_json
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      render json: @user
    else
      resp = {
        error: @user.errors.full_messages
      }
      render json: resp, status: :unprocessable_entity
    end
  end

  def destroy 
    if @user
      @user.destroy
      render json: @user, status: :accepted
    else
      render json: { errors: @user.errors.full_messages}
    end
  end
  
  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :childs_name, :username, :email, :password)
  end

  def get_user
    @user = User.find(params[:id])
  end
  
end
