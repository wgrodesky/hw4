Rails.application.routes.draw do
  get("/", { :controller => "places", :action => "index" })
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  get "/logout", to: "sessions#destroy"
  get "/signup", to: "users#new"
  resources "entries"
  resources "places"
  resources "sessions"
  resources "users"
end
