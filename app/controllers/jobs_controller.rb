class JobsController < ApplicationController
  before_action :find_job, only: %i[show edit update destroy]
  def index
    @jobs = Job.geocoded
    @markers = @jobs.map do |job|
      {
        lng: job.longitude,
        lat: job.latitude,
        infoWindow: render_to_string(partial: "info_window", locals: { job: job }),
        image_url: helpers.asset_url('https://t3.ftcdn.net/jpg/01/08/32/44/240_F_108324485_K0du9beLUgh5hpcHzJep5VXYhP2YR0Ec.jpg')
      }
    end
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
    @job.destroy
    respond_to do |format|
      format.html { redirect_to jobs_path, notice: 'The mission has been deleted' }
      format.js
    end
  end

  private

  def job_params
    params.require(:job).permit(:name, :description, :budget, :start_date, :end_date, :language_id, :interpreter_id, :address)
  end

  def find_job
    @job = Job.find(params[:id])
  end
end
