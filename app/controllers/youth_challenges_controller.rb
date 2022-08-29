class YouthChallengesController < ApplicationController
  def index
    @youth_challenges = YouthChallenge.all.order(:id)
    render template: "youth_challenges/index"
  end

  def show
    @youth_challenge = YouthChallenge.find_by(id: params[:id])
    render :show
  end

  def update
    @youth_challenge = YouthChallenge.find_by(id: params[:id])
    @youth_challenge.name = params[:name] || @youth_challenge.name
    @youth_challenge.address = params[:address] || @youth_challenge.address
    @youth_challenge.website = params[:website] || @youth_challenge.website
    @youth_challenge.state = params[:state] || @youth_challenge.state
    if @youth_challenge.save
      render :show
    else
      render json: { errors: youth_challenge.errors.full_messages }, status: 418
    end
  end

  def destroy
    youth_challenge = YouthChallenge.find_by(id: params[:id])
    youth_challenge.destroy
    render json: { message: "Youth Challenge successfully destroyed!" }
  end
end
