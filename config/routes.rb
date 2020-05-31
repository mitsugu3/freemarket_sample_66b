Rails.application.routes.draw do
  get 'card/new'

  get 'card/show'

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
  resources :card, only: [:new, :show] do
    collection do
      post 'show', to: 'card#show'
      post 'pay', to: 'card#pay'
      post 'delete', to: 'card#delete'
    end
  end
  root "posts#index"
  
end
