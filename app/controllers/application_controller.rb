class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  private

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:user_name, :email, :password, :password_confirmation])
  end

  def after_sign_out_path_for(users)
    new_user_session_path
  end
end
