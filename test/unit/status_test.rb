require 'test_helper'

class StatusTest < ActiveSupport::TestCase
  
  test "that a status require content" do 
  	status = Status.new

  	assert !status.save
  	assert !status.errors[:content].empty?
  end
  
  test "that a status's content is atleast 2 letter" do
  	status = Status.new
  	status.content = "H"

  	assert !status.save
  	assert !status.errors[:content].empty?

  end

  test "that a status has a user id" do
  	status = Status.new
  	status.content = "Hellp"

  	assert !status.save
  	assert !status.errors[:user_id].empty?
  end

end
