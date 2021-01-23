require "test_helper"

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "User has attributes" do
    u = users(:one)
    assert_equal "Test guy", u.name

    assert_equal "iamtest@universe.test.space", u.email
    assert_equal "testguy", u.username
    assert u.authenticate('hello world')
    assert_not_nil u.bio
  end
end
