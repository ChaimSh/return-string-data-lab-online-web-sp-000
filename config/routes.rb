Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'home', to: 'static#home'
  resources :orders
  resources :invoices
  post 'create', to: 'products#create'
  get 'inventory', to: 'products#inventory'
  get 'description', to: 'products#description'
end
