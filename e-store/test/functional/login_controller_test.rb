require 'test_helper'

class LoginControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get register" do
    get :register
    assert_response :success
  end

  test "should get create" do
    get :create
    assert_response :success
  end

  test "should get validate_user" do
    get :validate_user
    assert_response :success
  end

  test "should get show_all" do
    get :show_all
    assert_response :success
  end

  test "should get delete" do
    get :delete
    assert_response :success
  end

end
