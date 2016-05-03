class ReviewsController < ApplicationController
  def create
    @course = Course.find(params[:course_id])
    @course.reviews.create(comment_params.merge(:user => current_user))
    redirect_to course_path(@course)
  end
  private
  def comment_params
    params.require(:review).permit(:review, :rating)
  end
end
