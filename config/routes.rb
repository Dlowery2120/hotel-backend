Rails.application.routes.draw do
  namespace :api do 
    namespace :v1 do 
      resources :users
      resources :hotels
      resources :rooms
      resources :bookings
      post "/login", to: "auth#login"
    end
  end
end
