Rails.application.routes.draw do



	root 'items#index'

  resources :items
  resources :carts
  post 'items/show/:id', to: 'carts#add_item', as: :add_item
  get 'items/index'
  get 'items/show'


  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
