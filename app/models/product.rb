class Product < ApplicationRecord
  belongs_to :user, optional: true
  has_many :images
  has_many :categories
  belongs_to :saler, class_name: "User" ,optional: true
  belongs_to :buyer, class_name: "User" ,optional: true


  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :prefecture

  validates :name, presence: true , length: { minimum:1, message: '商品名を入れて下さい' }
  validates :description, presence: true , length: { minimum:1, message: '商品の詳細を入力して下さい' }
  validates :price, presence: true , length: { minimum:1, message: '価格を設定して下さい' }

  validates :images, presence: true
  
  
  accepts_nested_attributes_for :images, allow_destroy: true


end