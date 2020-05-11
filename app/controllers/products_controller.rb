class ProductsController < ApplicationController  
  def new
    @product = Product.new
    @product.images.new
  end

  def create
    @product = Product.new(post_params)
    if @product.save
      redirect_to posts_index_path, notice: '商品が登録されました'
    else
      render 'new' 
    end
  end

  private

  def post_params
    params.require(:product).permit(:id,:user_id,:name,:description,:category,:brands,:condition,:delivery_user,:delivery_method,:area,:delivery_days,:price,:created_at,:update_at,images_attributes: [:src]).merge(user_id: current_user.id)
  end


  #params.require(:product).permit(:id,:user_id,:name,:description,:category,:brands,:condition,:delivery_user,:delivery_method,:area,:delivery_days,:price,:created_at,:update_at,images_attributes: [:images]).merge(user_id: current_user.id)

  #def item_params
    #params.require(:item).permit(
     # :name,
      #[images_attributes: [:image]])
  #end

end
