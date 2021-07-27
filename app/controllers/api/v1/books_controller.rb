class Api::V1::BooksController < ApplicationController
    def index
        @books = Book.all
        render json: @books
    end

    def create
        @book = Book.new(book_params)
        if @book.save
          render json: @book
        else
          render json: { errors: @book.errors.full_messages }, status: :unprocessable_entity
        end
    end

    def destroy
        @book = Book.find(params[:id])
        if @book
            @book.destroy
            render json: @book, status: :accepted
        else
            render json: { errors: @book.errors.full_messages }
        end
    end

    private
    
    def book_params
        params.require(:book).permit(:title, :author, :book_url, :image_url, :category_id, :user_id, :collection_id)
    end
    
    
    
end
