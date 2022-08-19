Rails.application.routes.draw do
  post "/users" => "users#create"
  post "/sessions" => "sessions#create"

  get "/youth_challenges" => "youth_challenges#index"
  get "/youth_challenges/:id" => "youth_challenges#show"
  patch "/youth_challenges/:id" => "youth_challenges#update"
  delete "/youth_challenges/:id" => "youth_challenges#destroy"

  get "/animal_shelters" => "animal_shelters#index"
end
