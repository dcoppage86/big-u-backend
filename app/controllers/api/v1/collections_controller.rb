class Api::V1::CollectionsController < ApplicationController
    def index
        @collections = Collection.all
        render json: @collections
    end
    
end
