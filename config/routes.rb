Rails.application.routes.draw do
  
	root 'items#index'
  
  resources :items
  get 'items/index'
  get 'items/show'


  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
