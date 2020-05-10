class ProductsnewController < ApplicationController  
  def new
    @product = Product.new
  end

  def create
    @product = Product.new
    if @product.save!
      redirect_to post_index_path, notice: '商品が登録されました'
    else
      @product = Product.includes(:user)
      flash.now[:alert] = '画像を登録して下さい。'
      redirect_to productsnew_create_path
    end
  end

end
