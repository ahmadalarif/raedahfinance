require "test_helper"

class RaedahControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get raedah_index_url
    assert_response :success
  end
end
