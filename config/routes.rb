Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'static_pages#root'
  namespace :api, defaults: { format: :json } do
    resources :users, only: [:create]
    resource :session, only: [:create, :destroy]
    resources :products, only: [:show,:index,:update]
    # resources :departments, only: [:show]
    resources :carts, only:[:index, :create, :update, :destroy]
    resources :reviews, only:[:index, :create, :update]
  end
end
