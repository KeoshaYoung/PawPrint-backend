class YouthChallenge < ApplicationRecord
  validates :name, presence: true
  validates :address, presence: true
  validates :website, presence: true
  validates :state, presence: true

  belongs_to :user
end
