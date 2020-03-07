Rails.application.routes.draw do
  root "welcome#home"
  get "/signup", to: "welcome#signup"
  post "/signup", to: "users#create"
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'
  get '/logout' => 'sessions#destroy'
  resources :users, only: [:create, :show]
  resources :artists
  resources :albums do 
    resources :songs 
  end
  post "/albums/:id/songs/new" => 'songs#add', as: 'add_song'
  get '/auth/:provider/callback' => 'sessions#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
