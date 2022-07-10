class Api::ReviewsController < ApplicationController
  def create
    @review = Review.create(review_params)
    @user = current_user
    if @review.save
      render json: @review
    else
      render json: @review.errors.full_messages, status: 422
    end
  end

  def update
    @review = Review.find(params[:id])
    @review.update(review_params)
  end

  def destroy
    @review = Review.find(params[:id])
    @review.delete
    @product = @review.product
    render 'api/products/show'
  end

  def review_params
    params.require(:review).permit(:user_name,:user_id,:product_id,:body,:stars)
  end
end
