class AnimalSheltersController < ApplicationController
  def index
    @youth_challenges = YouthChallenge.all.order(:id)
    render template: "youth_challenges/index"
  end
end
