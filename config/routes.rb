Rails.application.routes.draw do
  resources :orders
  resources :line_items
  resources :carts
  devise_for :users, controllers: {
      sessions: 'users/sessions'
    }
  resources :categories
  resources :users 
  resources :products do
    collection do
      match 'search' => 'products#index', via: [:get, :post], as: :search
    end
  end

  namespace :admin do
    get 'index', to: 'dashboard#index'
    get 'charts', to: 'dashboard#charts'
    get 'elements', to: 'dashboard#elements'
    get 'widgets', to: 'dashboard#widgets'
    get 'panels', to: 'dashboard#panels'
  end

  get 'home/index'

  get 'home/by_category/:id', to: 'home#by_category', as: 'by_category'

  get 'product/detail/:id', to: 'home#detail', as: 'product_detail'
  root "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
