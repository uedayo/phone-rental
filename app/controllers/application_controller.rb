class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_filter :configure_permitted_parameters, if: :devise_controller?
  rescue_from IllegalStateError, with: :redirect_to_dashboard

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:last_name, :first_name, :phone_number, :division, :manager_name, :email, :password, :password_confirmation, :remember_me) }
    devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:last_name, :first_name, :phone_number, :division, :manager_name, :email, :password, :remember_me) }
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:last_name, :first_name, :phone_number, :division, :manager_name, :email, :password, :password_confirmation, :current_password) }
  end

  def redirect_to_dashboard
    redirect_to dashboard_index_path
    flash[:error] =  t('view.state_error_message')
  end
end
