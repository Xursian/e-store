require 'test_helper'

class ProvencesControllerTest < ActionController::TestCase
  setup do
    @provence = provences(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:provences)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create provence" do
    assert_difference('Provence.count') do
      post :create, provence: { eta_days: @provence.eta_days, gst: @provence.gst, hst: @provence.hst, name: @provence.name, pst: @provence.pst, shipping_cost: @provence.shipping_cost }
    end

    assert_redirected_to provence_path(assigns(:provence))
  end

  test "should show provence" do
    get :show, id: @provence
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @provence
    assert_response :success
  end

  test "should update provence" do
    put :update, id: @provence, provence: { eta_days: @provence.eta_days, gst: @provence.gst, hst: @provence.hst, name: @provence.name, pst: @provence.pst, shipping_cost: @provence.shipping_cost }
    assert_redirected_to provence_path(assigns(:provence))
  end

  test "should destroy provence" do
    assert_difference('Provence.count', -1) do
      delete :destroy, id: @provence
    end

    assert_redirected_to provences_path
  end
end
