Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  post "/signup", to: "users#create"
  get "/me", to: "users#show"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  resources :restaurants, only: [:index, :show] do
    resources :reviews, only: [:create, :destroy, :update, :index]
  end
  get "/food", to: "food#index"
end
