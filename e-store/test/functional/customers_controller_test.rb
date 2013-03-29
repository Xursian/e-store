require 'test_helper'

class CustomersControllerTest < ActionController::TestCase
  setup do
    @customer = customers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:customers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create customer" do
    assert_difference('Customer.count') do
      post :create, customer: { address: @customer.address, city: @customer.city, country: @customer.country, creditcard_number: @customer.creditcard_number, current_credits: @customer.current_credits, email: @customer.email, first_name: @customer.first_name, last_name: @customer.last_name, password: @customer.password, phone_number: @customer.phone_number, postal_code: @customer.postal_code, provence_id: @customer.provence_id }
    end

    assert_redirected_to customer_path(assigns(:customer))
  end

  test "should show customer" do
    get :show, id: @customer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @customer
    assert_response :success
  end

  test "should update customer" do
    put :update, id: @customer, customer: { address: @customer.address, city: @customer.city, country: @customer.country, creditcard_number: @customer.creditcard_number, current_credits: @customer.current_credits, email: @customer.email, first_name: @customer.first_name, last_name: @customer.last_name, password: @customer.password, phone_number: @customer.phone_number, postal_code: @customer.postal_code, provence_id: @customer.provence_id }
    assert_redirected_to customer_path(assigns(:customer))
  end

  test "should destroy customer" do
    assert_difference('Customer.count', -1) do
      delete :destroy, id: @customer
    end

    assert_redirected_to customers_path
  end
end