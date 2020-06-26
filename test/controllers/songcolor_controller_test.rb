require 'test_helper'

class SongcolorControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get songcolor_index_url
    assert_response :success
  end

end
