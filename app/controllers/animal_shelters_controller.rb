class AnimalSheltersController < ApplicationController
  require "json"
  require "rest-client"

  def index
    shelters = JSON.load(RestClient.get("https://api.petfinder.com/v2/organizations", { "Authorization" => "Bearer {token}" }))
    render json: shelters
  end
end
