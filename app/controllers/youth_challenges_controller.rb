class YouthChallengesController < ApplicationController
  def index
    youth_challenges = YouthChallenge.all
    render json: youth_challenges.as_json
  end
end
