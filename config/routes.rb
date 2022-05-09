Rails.application.routes.draw do
  get 'shifts/index'
  root "schedules#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/schedules", to: "schedules#index"
end
