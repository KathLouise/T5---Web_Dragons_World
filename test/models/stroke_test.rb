require 'test_helper'

class StrokeTest < ActiveSupport::TestCase
   test "one" do
	stroke = strokes(:test_one)
     	assert !stroke.save
   end
   test "two" do
	stroke = strokes(:test_two)
     	assert !stroke.save
   end
   test "three" do
	stroke = strokes(:test_three)
     	assert !stroke.save
   end
   test "four" do
	stroke = strokes(:test_four)
     	assert !stroke.save
   end
   test "five" do
	stroke = strokes(:test_five)
     	assert !stroke.save
   end
end
