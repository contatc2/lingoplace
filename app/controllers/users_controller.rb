class UsersController < ApplicationController
  before_action :find_user, only: %i[show dashboard]
  def index
    @users = User.where(interpreter: true)
  end

  def show
  end

  def dashboard
    @query = params[:query]
    @jobs = @user.jobs
    if @query.present?
      @users = User.search_by_name(@query)
    else
      @users = User.where(interpreter: true)
    end
  end

  private

  def find_user
    @user = User.find(params[:id])
  end
end
