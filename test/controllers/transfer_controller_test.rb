require 'test_helper'

class TransferControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get transfer_top_url
    assert_response :success
  end

end
