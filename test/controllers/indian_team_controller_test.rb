require "test_helper"

class IndianTeamControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get indian_team_index_url
    assert_response :success
  end

  test "should get show" do
    get indian_team_show_url
    assert_response :success
  end

  test "should get create" do
    get indian_team_create_url
    assert_response :success
  end

  test "should get update" do
    get indian_team_update_url
    assert_response :success
  end

  test "should get delete" do
    get indian_team_delete_url
    assert_response :success
  end
end
