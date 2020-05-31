class ProductsController < ApplicationController
  def show
  end

  def confirmation
  end 
  
  def edit
  end
  
  def set_images
    @images = Image.where(product_id: params[:id])
  end

end
