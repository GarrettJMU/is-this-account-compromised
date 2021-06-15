class User < ApplicationRecord
  validates :ip, uniqueness: true, presence: true
  acts_as_voter
end