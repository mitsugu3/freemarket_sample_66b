class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # before_action :authenticate_user!⇦自動的にユーザーのsign_upページへ飛ばす命令 
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:name, :email])
  end
end