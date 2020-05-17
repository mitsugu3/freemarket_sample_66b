class SignupsController < ApplicationController
  def step1
    @user = User.new

  end

  def new
    
  end

  private

  def user_params
    params.require(:user).permit(:nickname, :email, :password, :password_confirmation, :last_name, :first_name,
                                 :last_name_kana, :first_name_kana, :birthday, :phone_number
                                )
  end  
end
