require 'test_helper'

class LineitemsControllerTest < ActionController::TestCase
  setup do
    @lineitem = lineitems(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lineitems)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lineitem" do
    assert_difference('Lineitem.count') do
      post :create, lineitem: { order_id: @lineitem.order_id, price: @lineitem.price, product_id: @lineitem.product_id, quantity: @lineitem.quantity, sale_price: @lineitem.sale_price }
    end

    assert_redirected_to lineitem_path(assigns(:lineitem))
  end

  test "should show lineitem" do
    get :show, id: @lineitem
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lineitem
    assert_response :success
  end

  test "should update lineitem" do
    put :update, id: @lineitem, lineitem: { order_id: @lineitem.order_id, price: @lineitem.price, product_id: @lineitem.product_id, quantity: @lineitem.quantity, sale_price: @lineitem.sale_price }
    assert_redirected_to lineitem_path(assigns(:lineitem))
  end

  test "should destroy lineitem" do
    assert_difference('Lineitem.count', -1) do
      delete :destroy, id: @lineitem
    end

    assert_redirected_to lineitems_path
  end
end
