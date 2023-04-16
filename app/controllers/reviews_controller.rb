class ReviewsController < ApplicationController
    skip_before_action :authorized

    def create
        @review = Review.new(review_params)
        if @review.save
            render json: @review
        else
            render json: @review.errors, status: :unprocessable_entity
        end
    end

    private

    def review_params
        params.require(:review).permit(:content, :score, :product_id)
    end
    
end
