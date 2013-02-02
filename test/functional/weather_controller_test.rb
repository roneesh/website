require 'test_helper'

class WeatherControllerTest < ActionController::TestCase
  test "should get weather" do
    get :weather
    assert_response :success
  end

end
