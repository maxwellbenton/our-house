Rails.application.routes.draw do
  resources :comments
  resources :house_images
  resources :sections, only: [:new, :create]
  resources :users, only: [:index, :show]

  root 'house_images#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
