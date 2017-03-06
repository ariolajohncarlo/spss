Rails.application.routes.draw do
  resources :packages
  resources :types
  #resources :user_types
  resources :users
  resources :components
  resources :suppliers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
