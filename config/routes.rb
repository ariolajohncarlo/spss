Rails.application.routes.draw do
  resources :component_types
#  resources :component_packages
#  get 'components/:id' => 'components#show'
  post 'packages/add/:id' => 'packages#add'
  get 'components/:id/destroy' => 'components#destroy'
  get 'packages/:id/destroy' => 'packages#destroy'
  get 'suppliers/:id/destroy' => 'suppliers#destroy'
  get 'users/:id/destroy' => 'users#destroy'
  get 'component_types/:id/destroy' => 'component_types#destroy'
  get 'types/:id/destroy' => 'types#destroy'
  resources :packages
  resources :types
  resources :users
  resources :components
  resources :suppliers
  	
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
