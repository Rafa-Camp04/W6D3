Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :users, only: [:create, :destroy, :index, :show, :update]
  resources :artworks, only: [:create, :destroy, :index, :show, :update]
  resources :artwork_shares, only: [:create, :destroy]

  get '/users/:user_id/artworks', to: 'artworks#index'



  # get '/users', to: 'users#index', as: 'users'
  # post '/users', to: 'users#create'
  # get '/users/new', to: 'users#new', as: 'new_user'
  # get '/users/:id/edit', to: 'users#edit', as: 'edit_user'
  # get '/users/:id', to: 'users#show', as: 'user'
  # patch '/users/:id', to: 'users#update'
  # put '/users/:id', to: 'users#update'
  # delete '/users/:id', to: 'users#destroy'
 
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
