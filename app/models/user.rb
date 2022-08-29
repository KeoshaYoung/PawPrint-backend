class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true

  has_many :youth_challenges
  has_many :animal_shelters
end
