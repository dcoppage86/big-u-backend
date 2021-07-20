class Api::V1::DailyEntriesController < ApplicationController
    before_action :get_daily_entry, only: [:update, :delete]
    
    def index
        @daily_entries = DailyEntry.all
        render json: @daily_entries
    end

    def create
        @daily_entry = DailyEntry.new(params[:daily_entry])
        if @daily_entry.save
          render json: @daily_entry
        else
          render json:{ @daily_entry.errors.full_messages }, status: :unprocessable_entity
        end
    end

    def update
        if @daily_entry && @daily_entry.update(daily_entry_params)
          render json: @daily_entry, status: :accepted
        else
            render json: { errors: @daily_entry.errors.full_messages }
        end
    end

    def destroy
        if @daily_entry
            @daily_entry.destroy
            render json: @daily_entry, status: :accepted
        else
            render json: { errors: @daily_entry.errors.full_messages }
        end
    end
    
    private

    def daily_entry_params
        params.require(:daily_entry).permit(:title, :content, :user_id)
    end

    def get_daily_entry
        @daily_entry = DailyEntry.find(params[:id])
    end
    
    
end
