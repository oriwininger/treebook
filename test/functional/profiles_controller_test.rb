require 'test_helper'

class ProfilesControllerTest < ActionController::TestCase
  test "should get show" do
    get :show
    assert_response :success
  end
  test "should render a not found page" do
  	get :show, id: "doesn't exits"
  	assert_response :not_found
  end
end
