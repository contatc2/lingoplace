class UsersController < ApplicationController
  before_action :find_user, only: %i[show edit update destroy]
  def index
    @users = User.all
  end

  def show
  end

  def new
    @user = User.new
  end

  def edit
  end

  def update
    @user.update(user_params)
  end

  def create
    @user = User.new(user_params)
    if @user.save
      # No need for app/views/users/create.html/erb
      # As we are not displaying anything
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def destroy
    @user.destroy
    # No need for app/views/users/destroy.html/erb
    # As we are not displaying anything
    redirect_to new_user_session(@user)
  end

  private

  def find_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:email, :first_name, :last_name, :description,
                                 :interpreter, :picture, :location, :linkedin,
                                 :can_travel, :daily_rate, :phone, :availability)
  end
end
