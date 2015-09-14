require 'test_helper'

class OrdersControllerTest < ActionController::TestCase
  setup do
    @order = orders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:orders)
  end

  test "should create order" do
    assert_difference('Order.count') do
      post :create, order: { email: @order.email, name: @order.name, table_id: @order.table_id }
    end

    assert_response 201
  end

  test "should show order" do
    get :show, id: @order
    assert_response :success
  end

  test "should update order" do
    put :update, id: @order, order: { email: @order.email, name: @order.name, table_id: @order.table_id }
    assert_response 204
  end

  test "should destroy order" do
    assert_difference('Order.count', -1) do
      delete :destroy, id: @order
    end

    assert_response 204
  end
end
