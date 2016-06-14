require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "one" do
	user = users(:test_one)
  	assert user.save
  end
  test "two" do
	user = users(:test_two)
  	assert user.save
  end
  test "three" do
	user = users(:test_three)
  	assert user.save
  end
  test "four" do
	user = users(:test_four)
  	assert user.save
  end
  test "five" do
	user = users(:test_five)
  	assert user.save
  end
end
