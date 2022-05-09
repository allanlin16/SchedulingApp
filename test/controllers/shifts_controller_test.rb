require "test_helper"

class ShiftsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get shifts_index_url
    assert_response :success
  end
end
