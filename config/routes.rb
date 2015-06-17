Rails.application.routes.draw do
  resources :posts do
    resources :comments, :only => [:create]
  end
  resources :blogs, :only => [:show, :index]
  
  root "posts#index"

  get '/login' => 'sessions#new'
  get "/auth/:provider/callback" => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'
end
