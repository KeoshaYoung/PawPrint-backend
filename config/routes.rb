Rails.application.routes.draw do
  get "/youth_challenges" => "youth_challenges#index"
  post "/users" => "users#create"
  post "/sessions" => "sessions#create"
end
