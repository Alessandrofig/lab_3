Rails.application.routes.draw do
  get 'pages/home'
  get 'pages/about'
  get 'pages/contact'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Routes for pages Home, About y Contact
  get "/", to: "pages#home"
  get "/about", to: "pages#about"
  get "/contact", to: "pages#contact"

  # Route for the contact form
  post "/submit_contact", to: "contact#create"
  # Defines the root path route ("/")
  # root "posts#index"
end 
