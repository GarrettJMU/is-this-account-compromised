class Account < ApplicationRecord
  validates :address, presence: true, uniqueness: true
  acts_as_votable


  ## TODO - add validation to address
end
