class ReviewsController < ApplicationController
  before_action :find_review, only: :show
  before_action :set_job, only: %i[new create]

  def index
    @reviews = Review.all
  end

  def create
    @review = Review.new(review_params)
    @review.job = @job
    if @review.save
      respond_to do |format|
        format.html { redirect_to job_path(@job) }
        format.js
      end
    else
      respond_to do |format|
        format.html { render 'jobs/show' }
        format.js
      end
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
