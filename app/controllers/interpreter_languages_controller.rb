class InterpreterLanguagesController < ApplicationController
  before_action :set_interpreter, only: %i[index new create]
  before_action :find_interpreter_language, only: %i[show edit update]
  def index
    @interpreter_languages = InterpreterLanguage.where(user_id: @user)
  end

  def new
    @interpreter_language = InterpreterLanguage.new
  end

  def create
    @interpreter_language = InterpreterLanguage.new(interpreter_language_params)
    @interpreter_language.user = @user
    @interpreter_language.save
    redirect_to edit_user_registration_path
  end

  def edit
  end

  def update
    @interpreter_language.update(interpreter_language_params)
    redirect_to edit_user_registration
  end

  private

  def set_interpreter
    @user = User.find(params[:user_id])
  end

  def find_interpreter_language
    @interpreter_language = InterpreterLanguage.find(params[:id])
  end

  def interpreter_language_params
    params.require(:interpreter_language).permit(:language_id)
  end
end
