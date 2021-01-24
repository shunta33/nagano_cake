Rails.application.routes.draw do

  resources :addresses, only: [:index, :edit, :create, :update, :destroy]


  get 'customers/my_page' => 'customers#show'
  patch 'customers' => 'customers#update'
  get 'customers/unsubscribe' => 'customers#unsubscribe'
  patch 'customers/withdraw' => 'customers#withdraw'
  get 'cart_items' => 'cart_items#index'
  patch 'cart_items/:id' => 'cart_items#update' , as: 'cart_item'
  delete 'cart_items/destroy_all' => 'cart_items#destroy_all', as: 'cart_items_destroy_all'
  delete 'cart_items/:id' => 'cart_items#destroy'
  post 'cart_items' => 'cart_items#create'

  resources :items, only: [:index, :show]

  get 'orders/new' => 'orders#new'
  get 'orders/:id' => 'orders#show'
  get 'orders' => 'orders#index'
  post 'orders/confirm' => 'orders#confirm'
  post 'orders' => 'orders#create'
  get 'orders/complete' => 'orders#complete'

  root 'homes#top'
  get 'homes/about'

  namespace :admin do
    resources :items, only: [:index, :new, :edit, :show, :create, :update, :delete]
    resources :customers, only: [:index, :show, :edit, :update]
  end

  devise_for :admin, controllers: {
  sessions:      'admins/sessions',
  passwords:     'admins/passwords',
  registrations: 'admins/registrations'
}


devise_for :customers, controllers: {
  sessions:      'customers/sessions',
  passwords:     'customers/passwords',
  registrations: 'customers/registrations'
}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
