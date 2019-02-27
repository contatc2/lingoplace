class UsersController < ApplicationController
  before_action :find_user, only: :show
  def index
    @users = User.where(interpreter: true)
  end

  def show
  end

  private

  def find_user
    @user = User.new(params[:id])
  end
end
