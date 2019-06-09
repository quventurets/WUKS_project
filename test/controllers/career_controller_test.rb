require 'test_helper'

class CareerControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get career_top_url
    assert_response :success
  end

end
