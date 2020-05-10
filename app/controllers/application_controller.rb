class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?


#  before_action :basic_auth


#  def basic_auth
#     authenticate_or_request_with_http_basic do |username, password|
 #      username == ENV["BASIC_AUTH_USER"] && password == ENV["BASIC_AUTH_PASSWORD"]
 #    end
 #  end

  

   protected
 
   def configure_permitted_parameters
    # binding.pry
     devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname, :last_name, :first_name, :last_name_kana, :first_name_kana, :phone_number, :birthday, :address_post, :address_first_name, :address_last_name, :address_last_name_kana, :address_first_name_kana, :address_number, :address_prefecture, :address_block, :address_building, :address_phone_number])
   end
 
end
