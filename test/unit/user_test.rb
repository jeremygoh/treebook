require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "user has a first name" do
  	user = User.new
  	assert !user.save
  	assert !user.errors[:first_name].empty?
  end
  
  test "user has a last name" do
  	user = User.new
  	assert !user.save
  	assert !user.errors[:last_name].empty?
  end

  test "user has a profile name" do
  	user = User.new
  	assert !user.save
  	assert !user.errors[:profile_name].empty?
  end

  test "user has a unique profile name" do
  	user= User.new
  	user.profile_name = "jasonseifer"
  	assert !user.save
  	assert !user.errors[:profile_name].empty?
  end

  test "user should have a profile name without spaces" do
  	user = User.new
  	assert !user.save
  	assert !user.errors[:profile_name].empty?
  	assert user.errors[:profile_name].include?("Must be formatted correctly.")
  end

end
