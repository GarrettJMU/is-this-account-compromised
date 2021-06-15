require 'test_helper'

class AccountTest < ActiveSupport::TestCase
  test "the validation on non addresses" do
    account = Account.new("foo")
    assert_not account.save
  end
end
