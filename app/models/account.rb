class Account < ApplicationRecord
  validates :address, presence: true, uniqueness: true
  validate :address_format_is_valid

  acts_as_votable

  def address_format_is_valid
    return false if address == nil
    unless Ethereum::Formatter.new.valid_address?(address)
      errors.add(:address, 'is invalid')
    end
  end
end
