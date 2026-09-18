Rails.application.routes.draw do
  get "/cart", to: "carts#show"
  devise_for :users,
  defaults: { format: :json },
  controllers: {
    registrations: "users/registrations",
    sessions: "users/sessions"
  }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :products, only: [ :index, :show ]
  resources :cart_items, only: [ :create, :update, :destroy ]

  namespace :api do
    get "protected", to: "protected#index"
  end
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
