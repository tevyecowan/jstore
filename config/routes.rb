Rails.application.routes.draw do
  #devise_for :users
  resources :deposits
  resources :items
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  #post '/auth/:provider/callback' => 'sessions#omniauth'
  get 'about', to: 'home#about'
  # Defines the root path route ("/")
  # root "articles#index"
  root "home#index"
end
