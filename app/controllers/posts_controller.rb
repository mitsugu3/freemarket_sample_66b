class PostsController < ApplicationController
  def index
    @product = Product.all.order('created_at DESC').limit(3)
    # リミットの指定
    # order('created_at DESC').limit(3)
  end
end
