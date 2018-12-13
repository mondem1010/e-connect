require 'test_helper'

class EventCommentsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get event_comments_create_url
    assert_response :success
  end

  test "should get destroy" do
    get event_comments_destroy_url
    assert_response :success
  end

end
