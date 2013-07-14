require 'test_helper'

class StatusTest < ActiveSupport::TestCase
	test "that a status content requires 2 letters minimum" do 
	status = Status.new
	assert ! status.save
	assert !status.error[:content].empty? 
	end
end
