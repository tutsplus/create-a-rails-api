require 'test_helper'

class TablesControllerTest < ActionController::TestCase
  setup do
    @table = tables(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tables)
  end

  test "should create table" do
    assert_difference('Table.count') do
      post :create, table: { number: @table.number, seats: @table.seats }
    end

    assert_response 201
  end

  test "should show table" do
    get :show, id: @table
    assert_response :success
  end

  test "should update table" do
    put :update, id: @table, table: { number: @table.number, seats: @table.seats }
    assert_response 204
  end

  test "should destroy table" do
    assert_difference('Table.count', -1) do
      delete :destroy, id: @table
    end

    assert_response 204
  end
end
