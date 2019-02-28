class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:interpreter])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: %i[first_name last_name description picture location phone linkedin])
  end
  # protected

  # def after_sign_in_path_for(resource)
  #   if user_signed_in?
  #     jobs_path
  #   else
  #     edit_user_registration_path(current_user)
  #   end
  # end

  # def after_sign_up_path_for(resource)
  #   edit_user_registration_path(current_user)
  # end
end
