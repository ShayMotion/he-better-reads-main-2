module API
  class BooksController < ApplicationController
    before_action :find_book, only: [:show, :edit, :update, :destroy]
    def index
      render json: Book.all
    end

    def new
      book = Book.new
    end
    
    def create
      book = Book.new(allowed_params)

      if book.save
        render json: book
      else
        render json: { errors: book.errors.full_messages }
      end
    end

    def show
    end

    def update
      book = Book.find(params[:id])

      if book.update(allowed_params)
        render json: book
      else
        render json: { errors: book.errors.full_messages }
      end
    end

    private

    def allowed_params
      params.permit(
        :author_id,
        :description,
        :publish_date,
        :rating,
        :title
      )
    end

    def find_book
      render json: Book.find(params[:id])
  end
end