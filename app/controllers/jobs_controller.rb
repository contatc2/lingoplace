class JobsController < ApplicationController
  before_action :find_job, only: %i[show edit update destroy]
  before_action :set_user, only: %i[create destroy]
  def index
    @jobs = Job.all
  end

  def show
  end

  def new
    @job = Job.new
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

  def create
    @job = Job.new(job_params)
    @job.user = @user
    if @job.save
      # No need for app/views/users/create.html/erb
      # As we are not displaying anything
      redirect_to job_path(@job)
    else
      render :new
    end
  end

  def destroy
    @job.destroy
    # No need for app/views/users/destroy.html/erb
    # As we are not displaying anything
    redirect_to user_path(@user)
  end

  private

  def job_params
    params.require(:job).permit(:name, :description, :budget, :start_date, :end_date, :posted_date, :language)
  end

  def find_job
    @job = Job.find(params[:id])
  end

  def set_user
    @user = User.find(params[:user_id])
  end
end
