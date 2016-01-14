require 'test_helper'

class UserTest < ActiveSupport::TestCase

  test "User is not saved if first name not supplied" do
    user1 = User.new
    assert_not user1.save
  end

  test "User is not saved if last name not supplied" do
    user2 = User.new(firstname: "John", email: "user2@example.com")
    assert_not user2.save
  end

  test "User is not saved no email is supplied" do
    user3 = User.new(firstname: "John", lastname: "Doe" )
    assert_not user3.save
  end

  test "User is not saved if supplied email is a duplicate" do
    user4 = User.new(firstname: "Jane", lastname: "Doe", email: "user4@example.com")
    user4.save
    user5 = User.new(firstname: "Jane", lastname: "Doe", email: "user4@example.com")
    assert_not user5.save
  end

end
