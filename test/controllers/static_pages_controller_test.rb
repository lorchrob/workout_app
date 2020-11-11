require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get landing" do
    get root_path
    assert_response :success
  end

  test "should get about" do
    get about_path
    assert_response :success
  end

  test "should get log" do
    get log_path
    assert_response :success
  end

  test "should get generate" do
    get generate_path
    assert_response :success
  end

  test "should get stats" do
    get stats_path
    assert_response :success
  end

end
