Rails.application.routes.draw do
  root "welcome#home"
  get "/signup", to: "welcome#signup"
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'
  resources :users, only: [:create, :show]
  resources :songs
  resources :albums do 
    resources :songs 
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
