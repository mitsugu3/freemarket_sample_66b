class PostsController < ApplicationController
  def index
    @product = Product.all.order('created_at DESC').limit(3)
    @parents = Category.where(ancestry:nil)
  end
end
