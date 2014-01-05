require 'test_helper'

class Portfolio2014ControllerTest < ActionController::TestCase
  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get work" do
    get :work
    assert_response :success
  end

  test "should get weather" do
    get :weather
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

end
