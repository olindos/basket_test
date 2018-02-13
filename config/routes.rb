Rails.application.routes.draw do
  root to: 'home#index'

  resources :products
  resources :order_items
end
