Rails.application.routes.draw do
  get 'user_sessions/new'
  get 'user_sessions/create'
  get 'user_sessions/destroy'
  resources :users
  get "login" => "user_sessions#new", :as => :login
  post "login" => "user_sessions#create"
  post 'logout' => 'user_sessions#destroy', :as => :logout
    # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "users#index"
end
