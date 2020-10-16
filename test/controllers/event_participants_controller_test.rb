require 'test_helper'

class EventParticipantsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get event_participants_create_url
    assert_response :success
  end

  test "should get update" do
    get event_participants_update_url
    assert_response :success
  end

  test "should get delete" do
    get event_participants_delete_url
    assert_response :success
  end

end
