Rails.application.routes.draw do
#  get 'components/:id' => 'components#show'
  get 'components/:id/destroy' => 'components#destroy'
  get 'packages/:id/destroy' => 'components#destroy'
  get 'suppliers/:id/destroy' => 'components#destroy'
  get 'users/:id/destroy' => 'components#destroy'
  resources :packages
  resources :types
  resources :users
  resources :components
  resources :suppliers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
