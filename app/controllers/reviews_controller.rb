class ReviewsController < ApplicationController
   
   def new
   @restaurant = Restaurant.new
   end

   def create
   @review = Reviews.new(params[:review])
   @reviews.save
   redirect_to review_path(@reviews)
   end

   private

  def review_params
    params.require(:review).permit(:content)
  end

end
