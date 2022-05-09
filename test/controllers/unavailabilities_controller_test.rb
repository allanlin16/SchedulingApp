require "test_helper"

class UnavailabilitiesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get unavailabilities_index_url
    assert_response :success
  end
end
