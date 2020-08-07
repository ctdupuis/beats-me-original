Rails.application.routes.draw do
  get 'playlists/new'
  get 'playlists/create'
  get 'playlists/edit'
  get 'playlists/update'
  get 'playlists/destroy'
  get 'playlists/add_pl_song'
  root "welcome#home"
  get "/signup", to: "welcome#signup"
  post "/signup", to: "users#create"
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'
  get '/logout' => 'sessions#destroy'
  resources :users, only: [:create, :show] do
    resources :playlists
  end
  resources :artists
  resources :albums do 
    resources :songs 
  end
  post "/albums/:id/songs/new" => 'songs#add', as: 'add_song'
  post "/users/:user_id/playlists/new" => "playlists#create"
  get "users/:user_id/playlists/:id/add_songs" => "playlists#song_select", as: 'song_select'
  post "users/:user_id/playlists/:id/add_songs" => "playlists#add_songs", as: 'add_pl_songs'
  patch "users/:user_id/playlists/:id/edit" => "playlists#update"
  post "users/:user_id/playlists/:id" => "playlists#remove_song", as: 'remove_pl_song'
  get '/auth/:provider/callback' => 'sessions#create'
  get 'my_page' => 'users#my_page', as: 'my_page'
  get 'my_page/playlists' => "playlists#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
