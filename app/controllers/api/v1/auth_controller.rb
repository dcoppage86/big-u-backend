class Api::V1::AuthController < ApplicationController
    def create
        @user = User.find_by(username: params[:auth][:username])

        if @user && @user.authenticate(params[:auth][:password])
            session[:user_id] = @user.id
            render json: @user
        else
            render json: {error: "Invalid Credentials"}
        end
    end

    def get_current_user
        if logged_in?
            render json: current_user
        else
            render json: {
                error: "Not logged in"
            }
        end
    end
end
