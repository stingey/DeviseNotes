require 'test_helper'

class MynotesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get mynotes_index_url
    assert_response :success
  end

end
