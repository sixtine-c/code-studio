Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  root "main#index"

  resource :session
  resource :registration
  resource :password_reset
  resource :password

  # Defines the root path route ("/")
  # root "posts#index"

  if Rails.env.local?
    namespace :biblio do
      root "home#index"
      resource :shelf do
        get :index, on: :collection
      end
    end
  end
end
