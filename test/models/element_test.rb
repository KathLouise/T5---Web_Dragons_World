require 'test_helper'

class ElementTest < ActiveSupport::TestCase
   test "one" do
	element = elements(:test_one)
     	assert !element.save
   end
   test "two" do
	element = elements(:test_two)
     	assert !element.save
   end
   test "three" do
	element = elements(:test_three)
     	assert !element.save
   end
   test "four" do
	element = elements(:test_four)
     	assert !element.save
   end
   test "five" do
	element = elements(:test_five)
     	assert !element.save
   end
end
