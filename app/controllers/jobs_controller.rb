class JobsController < ApplicationController
  before_action :find_job, only: %i[]
  before_action :set_user, only: %i[]
  def index
    @jobs = Job.all
  end

  def show
  end

  def new
  end

  def edit
  end

  def destroy
    @job.destroy
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
