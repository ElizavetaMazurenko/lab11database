require 'test_helper'

class PalinControllerTest < ActionDispatch::IntegrationTest
  test "should get inputdb" do
    get palin_inputdb_url
    assert_response :success
  end

  test "should get outputdb" do
    get palin_outputdb_url
    assert_response :success
  end

end
