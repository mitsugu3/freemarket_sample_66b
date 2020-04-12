Rails.application.routes.draw do
  devise_for :users
  root 'users#index'
  get 'users/index'
  get 'users/menu' => "users#menu"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
