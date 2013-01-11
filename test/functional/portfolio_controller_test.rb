require 'test_helper'

class PortfolioControllerTest < ActionController::TestCase
  test "should get physical" do
    get :physical
    assert_response :success
  end

  test "should get design" do
    get :design
    assert_response :success
  end

  test "should get architecture" do
    get :architecture
    assert_response :success
  end

end
