class Api::V1::AuthController < ApplicationController
    def create
        @user = User.find_by(username: params[:auth][:username])

        if @user && @user.authenticate(params[:auth][:password])
            session[:user_id] = @user.id
            render json: UserSerializer.new(@user)
        else
            render json: {error: "Invalid Credentials"}
        end
    end

    def get_current_user
        if logged_in?
            render json: UserSerializer.new(current_user)
        else
            render json: {
                error: "Not logged in"
            }
        end
    end

    def destroy 
        session.clear 
        render json: {
            notice: "Successfully Logged Out"
        }, status: :ok
    end
end
