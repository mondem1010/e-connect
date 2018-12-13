require 'test_helper'

class ArtistCommentsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get artist_comments_create_url
    assert_response :success
  end

  test "should get destroy" do
    get artist_comments_destroy_url
    assert_response :success
  end

end
