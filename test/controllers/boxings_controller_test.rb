require 'test_helper'

class BoxingsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get boxings_index_url
    assert_response :success
  end

end
