Rails.application.routes.draw do
  root "welcome#home"
  resources :users, only: [:new, :create, :show]
  resources :songs
  get "/signup", to: "welcome#signup"
  post "/signup", to: "users#create"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
