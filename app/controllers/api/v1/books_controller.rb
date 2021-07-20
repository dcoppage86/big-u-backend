class Api::V1::BooksController < ApplicationController
    def index
        @books = Book.all
        render json: @books
    end

    def create
        @book = Book.new(params[:book])
        if @book.save
          render json: @book
        else
          render json: @book.errors.full_messages, status: :unprocessable_entity
        end
    end
    
    
end
