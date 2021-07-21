class Api::V1::AuthController < ApplicationController
    def create
        @user = User.find_by(username: params[:auth][:username])

        if @user && @user.authenticate(params[:auth][:username])
            render json: @user
        else
            render json: {error: "Invalid Credentials"}
        end
    end
end
