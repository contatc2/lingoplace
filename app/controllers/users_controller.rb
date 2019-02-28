class UsersController < ApplicationController
  before_action :find_user, only: %i[show dashboard]
  def index
    @users = User.where(interpreter: true)
  end

  def show
  end

  def dashboard
    @jobs = @user.jobs
  end

  private

  def find_user
    @user = User.find(params[:id])
  end
end
