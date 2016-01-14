require 'test_helper'

class UserTest < ActiveSupport::TestCase

  test "user fails if no name" do
    user1 = User.new
    assert_not user1.save
  end
end
