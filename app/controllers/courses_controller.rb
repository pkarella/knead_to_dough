class CoursesController < ApplicationController
  before_action :authenticate_user!, :only => [:new]

  def index
    @current_user = current_user
      @courses = Course.all

    end

    def show
      @course = Course.find(params[:id])

    end

    def new
      @course = Course.new

    end

    def create
      @course = Course.new(course_params)
      if @course.save
        flash[:notice] = "Course successfully added!"
        redirect_to  courses_path
      else
        render :new
      end
    end

    def edit
        @course = Course.find(params[:id])
        render :edit
      end

  def update
        @course= Course.find(params[:id])
        if @course.update(course_params)
          redirect_to courses_path
        else
          render :edit
        end
      end
  def destroy
      @course = Course.find(params[:id])
      @course.destroy
      redirect_to courses_path
    end
  private
    def course_params
      params.require(:course).permit(:title, :name,:location, :cost,:description,:image)
    end
  end
