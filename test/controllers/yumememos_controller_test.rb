require 'test_helper'

class YumememosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get yumememos_index_url
    assert_response :success
  end

end
