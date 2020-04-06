class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


  before_action :basic_auth

  

  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == 'frem' && password == '1234'
    end
  end
end