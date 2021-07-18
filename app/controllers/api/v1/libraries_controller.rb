class Api::V1::LibrariesController < ApplicationController

    def def index
        @libraries = Library.all
        render json: @libraries
    end

    def create
        @library = Library.new(params[:library])
        if @library.save
          render json: @library, status: :accepted 
        else
            render json: @library.errors, status: :unprocessable_entity
        end
    end
    
    
end
