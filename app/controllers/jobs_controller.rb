class JobsController < ApplicationController
  before_action :find_job, only: %i[]
  before_action :set_user, only: %i[]
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
    @job.update(job_params)
  end

  def create
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
    params.require(:job).permit(:name, :description)
  end

  def find_job
    @job = Job.find(params[:id])
  end

  def set_user
    @user = User.find(params[:user_id])
  end
end
