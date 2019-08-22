class ReviewsController < ApplicationController
  def new
    @meal = Meal.find(params[:id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @meal = Meal.find(params[:meal_id])
    @user = User.find(params[:user_id])
    @review.user = @user
    @review.meal = @meal
    @review.save
    redirect_to meal_path(@meal)
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
