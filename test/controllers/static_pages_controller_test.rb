require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get landing" do
    get static_pages_landing_url
    assert_response :success
  end

  test "should get about" do
    get static_pages_about_url
    assert_response :success
  end

  test "should get log" do
    get static_pages_log_url
    assert_response :success
  end

  test "should get generate" do
    get static_pages_generate_url
    assert_response :success
  end

  test "should get stats" do
    get static_pages_stats_url
    assert_response :success
  end

end
