Rails.application.routes.draw do
  resources :users
  resources :deposits
  resources :items
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get 'about', to: 'home#about'
  # Defines the root path route ("/")
  # root "articles#index"
  root "home#index"
end
