class Api::V1::BooksController < ApplicationController
    def index
        @books = Book.all
        render json: BookSerializer.new(@books)
    end

    def create
        @book = current_user.books.new(book_params)
        if @book.save
          render json: BookSerializer.new(@book)
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
        params.require(:book).permit(:book_title, :book_author, :book_url, :image_url, :user_id)
    end
    
    
    
end
