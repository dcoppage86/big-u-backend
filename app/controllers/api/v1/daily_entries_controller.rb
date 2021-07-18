class Api::V1::DailyEntriesController < ApplicationController
    
    def index
        @daily_entries = DailyEntry.all
        render json: @daily_entries
    end

    def create
        @daily_entry = DailyEntry.new(params[:daily_entry])
        if @daily_entry.save
          render json: @daily_entry
        else
          render json: @daily_entry.errors, status: :unprocessable_entity
        end
    end
    
    
    
end
