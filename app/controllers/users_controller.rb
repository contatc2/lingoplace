class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params[:user])
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
    @user = User.find(params[:id])
    @user.destroy
      # No need for app/views/users/create.html/erb
      # As we are not displaying anything
    redirect_to new_user_session(@user)
  end

  private

  def user_params
    params.require(:user).permit(:email)
  end
end
