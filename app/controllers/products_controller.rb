class ProductsController < ApplicationController
  def new
    @category_parent_array = Category.where(ancestry: nil)
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

  def get_category_children
    #選択された親カテゴリーに紐付く子カテゴリーの配列を取得
    @category_children = Category.where('ancestry = ?',"#{params[:parent_id]}")
  end

  # 子カテゴリーが選択された後に動くアクション
  def get_category_grandchildren
    #選択された子カテゴリーに紐付く孫カテゴリーの配列を取得@category_grandchildren
    child_category = Category.find(params[:child_id])
    @grand_child_category = child_category.children
  end

  # ancestryの取得
  def show
    @product = Product.find(params[:id])
    @parents = Category.where(ancestry:nil)
  end

  def destroy     
    @product = Product.find(params[:id])     
    @product.destroy
    redirect_to posts_index_path, notice: '商品が削除されました'
  end   

  private

  def post_params
    params.require(:product).permit(:id,:user_id,:name,:description,:category_id,:brands,:condition,:delivery_user,:delivery_method,:area,:delivery_days,:price,:created_at,:update_at,images_attributes: [:src, :_destroy, :id]).merge(user_id: current_user.id)
  end

  # ancestryの取得 
  def product_params
    params.require(:product)
  end
  

end
