require 'test_helper'

class DragonTest < ActiveSupport::TestCase
   test "test_one" do
	dragon = dragons(:test_one)
	assert dragon.save
   end
   test "test_two" do
	dragon = dragons(:test_two)
	assert dragon.save
   end
   test "test_three" do
	dragon = dragons(:test_three)
	assert dragon.save
   end
   test "test_four" do
	dragon = dragons(:test_four)
	assert dragon.save
   end
   test "test_five" do
	dragon = dragons(:test_five)
	assert dragon.save
   end
end
