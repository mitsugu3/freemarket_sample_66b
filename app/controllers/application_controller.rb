class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


  before_action :basic_auth

  

  def basic_auth
    http_basic_authenticate_with :name => "admin", :password => "2222", :except => :index


    end
  end
end