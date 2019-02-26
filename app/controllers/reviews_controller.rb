class ReviewsController < ApplicationController
  before_action :find_review, only: :show
  before_action :set_job, only: %i[new create]

  def index
    @reviews = Review.all
  end

  def show
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.job = @job
    if @review.save
      # No need for app/views/reviews/create.html/erb
      # As we are not displaying anything
      redirect_to job_review_path(@review)
    else
      render :new
    end
  end

  private

  def find_review
    @review = Review.find(params[:id])
  end

  def set_job
    @job = Job.find(params[:job_id])
  end

  def review_params
    params.require(:review).permit(:description, :stars)
  end
end
