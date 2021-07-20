class Api::V1::CommentsController < ApplicationController

    def index
        @comments = Comment.all
        render json: @comments
    end

    def create 
        @comment = Comment.create(comment_params)
        if @comment.save 
            render json: @comment
        else
            render json: { errors: @comment.errors.full_messages }, status: :unprocessable_entity
        end
    end

    def destroy
        @comment = Comment.find(params[:id])
        if @comment
            @comment.destroy
            render json: @comment, status: :accepted
        else
            render json: { errors: @comment.errors.full_messages }
        end
    end

    private

    def comment_params
        params.require(:comment).permit(:title, :content, :user_id, :comment_id)
    end
    
end
