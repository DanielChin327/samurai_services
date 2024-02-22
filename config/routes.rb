Rails.application.routes.draw do
  devise_for :users #This provides all the routes for the users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.

  # get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  resources :samurais, only: [:index, :new, :create, :show] do
    resources :bookings, only: [:create]
  end

  resources :bookings, only: [:index]
  # This is placed outside of the nested resources because devise_for users above
  # automatically only allows the logged in users bookings to be viewable.
  namespace :daimyo do
    resources :bookings, only: :index
  end

  resources :bookings, only: [:update]

end
