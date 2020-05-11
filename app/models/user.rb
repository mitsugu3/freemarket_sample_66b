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
  validates :email,
    presence: true,
    uniqueness: { message: "メールアドレスに誤りがあります。正しく変更してください。" },
    format: { with: /\A[a-zA-Z0-9.!#$%&'*+\/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*[a-zA-Z]+\z/, allow_blank: true, message: "フォーマットが不適切です" }
  validates :password,
    presence: true,
    confirmation: { message: "パスワードとパスワード（確認）が一致しません" },
    length: { in: 7..128, message: "パスワードは7文字以上128文字以下で入力してください" },
    format: { with: /\A(?=.*[^\d])+/, allow_blank: true, message: "数字のみのパスワードは設定できません" }
  validates :password_confirmation,
    presence: true
  validates :phone_number,
    presence: true,
    length: { maximum: 11 }

  has_many :buyed_items, foreign_key: "buyer_id", class_name: "Product"
  has_many :saling_items, -> { where("buyer_id is NULL") }, foreign_key: "saler_id", class_name: "Product"
  has_many :sold_items, -> { where("buyer_id is not NULL") }, foreign_key: "saler_id", class_name: "Product"


end
