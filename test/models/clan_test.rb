require 'test_helper'

class ClanTest < ActiveSupport::TestCase
   test "one" do
	clan = clans(:test_one)
     	assert !clan.save
   end
   test "two" do
	clan = clans(:test_two)
     	assert !clan.save
   end
   test "three" do
	clan = clans(:test_three)
     	assert !clan.save
   end
   test "four" do
	clan = clans(:test_four)
     	assert !clan.save
   end
   test "five" do
	clan = clans(:test_five)
     	assert !clan.save
   end
end
