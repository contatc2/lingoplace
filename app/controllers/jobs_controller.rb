class JobsController < ApplicationController
  before_action :find_job, only: %i[show edit update destroy]
  def index
    @jobs = Job.all
  end

  def show
    @review = Review.new
  end

  def new
    @job = Job.new
  end

  def create
    @job = Job.new(job_params)
    @job.user = current_user
    @job.date_posted = Date.today
    if @job.save
      redirect_to job_path(@job)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @job.update(job_params)
      redirect_to job_path(@job)
    else
      render :edit
    end
  end

  def destroy
    @user = @job.user
    @job.destroy
    redirect_to edit_user_registration_path
  end

  private

  def job_params
    params.require(:job).permit(:name, :description, :budget, :start_date, :end_date, :language_id, :interpreter_id)
  end

  def find_job
    @job = Job.find(params[:id])
  end
end
