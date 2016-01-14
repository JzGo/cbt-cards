require 'test_helper'

class UserTest < ActiveSupport::TestCase

  test "User is not saved if first name not supplied" do
    user1 = User.new(last_name: "Doe", email: "user1@example.com")
    assert_not(user1.valid?, "User valid without first name")
  end

  test "User is not saved if last name not supplied" do
    user2 = User.new(first_name: "John", email: "user2@example.com")
    assert_not(user2.valid?, "User valid without last name")
  end

  test "User is not saved no email is supplied" do
    user3 = User.new(first_name: "John", last_name: "Doe" )
    assert_not(user3.valid?, "User valid without email")
  end

  test "User is not saved if supplied email is a duplicate" do
    user4 = User.new(first_name: "Jane", last_name: "Doe", email: "user4@example.com")
    user4.save
    user5 = User.new(first_name: "Jane", last_name: "Doe", email: "user4@example.com")
    assert_not(user5.valid?, "User valid with duplicate email")
  end

end
