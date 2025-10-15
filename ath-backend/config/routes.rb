Rails.application.routes.draw do
  namespace :admin do
    get "recordings/index"
    get "recordings/new"
    get "recordings/create"
    get "recordings/update"
    get "recordings/edit"
    get "recordings/destroy"
    get "recordings/show"
  end
  get "recordings/index"
  get "recordings/new"
  get "recordings/create"
  get "recordings/update"
  get "recordings/edit"
  get "recordings/destroy"
  get "recordings/show"
  devise_for :admin_users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  root to: redirect("/admin/dashboard")
  get "/admin", to: redirect("/admin/dashboard")
  get "/admin/dashboard", to: "admin/dashboard#index"

  scope "/admin" do
    resources :recordings
  end
end
