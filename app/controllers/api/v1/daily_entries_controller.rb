class Api::V1::DailyEntriesController < ApplicationController
    before_action :get_daily_entry, only: [:show, :destroy]
    
    def index
        if logged_in?
            @daily_entries = current_user.daily_entries
            render json: DailyEntrySerializer.new(@daily_entries)
        else
            render json: {
                error: "You need to login to see your daily entries"
            }
        end
    end

    def show
        render json: @daily_entry
      end
    

    def create
        @daily_entry = current_user.daily_entries.new(daily_entry_params)
        if @daily_entry.save
          render json: DailyEntrySerializer.new(@daily_entry)
        else
          render json:{ errors: @daily_entry.errors.full_messages }, status: :unprocessable_entity
        end
    end

    def destroy
        if @daily_entry
            @daily_entry.destroy
            render json: {data: "Entry was successfully deleted"}, status: :ok
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
