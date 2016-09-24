require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get info" do
    get pages_info_url
    assert_response :success
  end

 test "should get top" do
   get pages_top_url
   assert_response :success
 end

end
