class ReviewsController < ApplicationController
  before_action :find_book
  before_action :find_review, only: [:edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :edit]

  def new
    @review = Review.new
    render json: @reviews
  end

    def index
      @reviews = Review.all
     render json: @reviews
    end

    def create
        @review = Review.new(allowed_params)
  
        if @review.save
          render json: @review
        else
          render json: { errors: review.errors.full_messages }
        end
      end

        def show
            render json: Review.find(params[:id])
        end
 
        def update
            @review = Review.find(params[:id])
      
            if review.update(allowed_params)
              render json: @review
            else
              render json: { errors: review.errors.full_messages }
            end
          end

        def destroy
            @review.destroy
        end


        private

        def allowed_params
            params.permit(
              :comment,
              :rating
            )
          end
        end
      end
