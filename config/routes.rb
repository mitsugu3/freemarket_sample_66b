Rails.application.routes.draw do
  get 'products/new'
  devise_for :users
  get 'productsnew/create'
  get 'posts/index'
  get 'products/show'
  resources :products, except: :show
  get 'login'   => 'sessions#new'
  post'login'   => 'sessions#create'
  get 'products/confirmation'
  get 'users/show'
  get 'mypage/index'
  get 'mypage/credit'
  get 'mypage/logout'
  get 'mypage/index'
  resources 'products', except: :show
  resources :signups do
    collection do
      get 'step1'
    end
  end
  root "posts#index"

  resources :products do 
    #Ajaxで動くアクションのルートを作成
    collection do
      get 'category/get_category_children',to: "products#get_category_children", defaults: { format: 'json' }
      get 'category/get_category_grandchildren', to: 'products#get_category_grandchildren', defaults: { format: 'json' }
    end
  end 

end
