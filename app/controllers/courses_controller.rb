class CoursesController < ApplicationController
  before_action :find_course, only: [:show, :edit, :update, :destroy]

  def index
    @courses = Course.all
  end

  def new
    @course = Course.new
  end

  def create
    @course = current_user.courses.create(course_params)
    if @course.save
      redirect_to course_path(@course)
    else
      render 'new'
    end
  end

  def show

  end

  def edit

  end

  def update
    # condition to determine if user has permission to edit
    @course.update_attributes(course_params)
    redirect_to courses_path
  end

  def destroy
    # condition to determine if user has permission to destroy
    @course.destroy
    redirect_to root_path
  end

  private

  def find_course
    @course = Course.find(params[:id])
  end

  def course_params
    params.require(:course).permit(:name, :address, :location, :description)
  end
end
