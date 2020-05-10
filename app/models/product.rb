class Product < ApplicationRecord
  belongs_to :user
  has_many :images

  accepts_nested_attributes_for :images, allow_destroy: true

  mount_uploader :image, ImageUploader

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :prefecture

end
