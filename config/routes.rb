Rails.application.routes.draw do
  get 'messages/index'
  get 'product/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "messages#index"
  
end
