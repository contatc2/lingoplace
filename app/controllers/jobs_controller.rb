class JobsController < ApplicationController
  before_action :find_job, only: %i[show edit update destroy]
  before_action :set_user, only: %i[new create]
  def index
    @jobs = Job.all
  end

  def show
  end

  def new
    @job = Job.new
  end

  def create
    @job = Job.new(job_params)
    @job.user = @user
    @job.date_posted = Time.today
    if @job.save
      redirect_to edit_user_registration_path
    else
      render :new
    end
  end

  def edit
    @user = @job.user
  end

  def update
    @user = @job.user
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
    params.require(:job).permit(:name, :description, :budget, :start_date, :end_date, :language_id)
  end

  def find_job
    @job = Job.find(params[:id])
  end

  def set_user
    @user = User.find(params[:user_id])
  end
end
