require 'test_helper'

class SongDiscsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get song_discs_create_url
    assert_response :success
  end

  test "should get destroy" do
    get song_discs_destroy_url
    assert_response :success
  end

end
