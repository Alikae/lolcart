Rails.application.routes.draw do



  

	root 'items#index'
  resources :charges, only: [:new, :create]
  resources :items
  resources :carts
  post 'items/show/:id', to: 'carts#add_item', as: :add_item
  delete 'carts/show/:id', to: 'carts#remove_item', as: :remove_item
  get 'items/index'
  get 'items/show'


  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
