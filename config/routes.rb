Rails.application.routes.draw do
  resources :products, only: %i[index show]
  resources :users, only: %i[new create]
  resource :orders, only: [:create]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
