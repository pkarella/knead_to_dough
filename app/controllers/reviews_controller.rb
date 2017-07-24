class ReviewsController < ApplicationController
  def new
      @course = Course.find(params[:course_id])
      @review = @course.reviews.new
    end
    def create
        @course = Course.find(params[:course_id])
        @review = @course.reviews.new(review_params)
        if @review.save
          flash[:notice] = "review successfully added!"
          redirect_to course_path(@review.course)
        else
          render :new
        end
      end
      def edit
       @course = Course.find(params[:course_id])
        @review = Review.find(params[:id])
        render :edit
      end

      def update
       @course = Course.find(params[:course_id])
        @review= Review.find(params[:id])
        if @review.update(review_params)
          redirect_to course_path(@review.course)
        else
          render :new
        end
      end
        def destroy
         @review = Review.find(params[:id])
         @review.destroy
         redirect_to course_path(@review.course)
       end

    private
      def review_params
        params.require(:review).permit(:author, :comment)
      end
    end
