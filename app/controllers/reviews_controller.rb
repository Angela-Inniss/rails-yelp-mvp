class ReviewsController < ApplicationController
  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    if @review.save # if review is ok then save it
      redirect_to restaurant_path(@restaurant) # if not go to index pg
    else
      render :new # if not stay on same pg and ask keep user info
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
