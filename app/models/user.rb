class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  #has_many :addresses dependent:destroy
  #has_many :comments dependent:destroy
  #has_many :carts dependent:destroy
  #has_many :cards dependent:destroy
  #has_many :likes dependent:destroy
  #has_many :products dependent:destroy

  validates :nickname,
    presence: true,
    length: { maximum: 20 }

  validates :password_confirmation,
    presence: true
  validates :phone_number,
    presence: true,
    length: { maximum: 11 }
  validates :last_name, :first_name, :last_name_kana, :first_name_kana, :address_post, :address_first_name, :address_last_name, :address_first_name_kana, :address_last_name_kana, :address_number, :address_prefecture, :address_block,
    presence: true
  validates :birthday,
   presence: true
end
