require 'test_helper'

class TOrdersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @t_order = t_orders(:one)
  end

  test "should get index" do
    get t_orders_url
    assert_response :success
  end

  test "should get new" do
    get new_t_order_url
    assert_response :success
  end

  test "should create t_order" do
    assert_difference('TOrder.count') do
      post t_orders_url, params: { t_order: { price: @t_order.price } }
    end

    assert_redirected_to t_order_url(TOrder.last)
  end

  test "should show t_order" do
    get t_order_url(@t_order)
    assert_response :success
  end

  test "should get edit" do
    get edit_t_order_url(@t_order)
    assert_response :success
  end

  test "should update t_order" do
    patch t_order_url(@t_order), params: { t_order: { price: @t_order.price } }
    assert_redirected_to t_order_url(@t_order)
  end

  test "should destroy t_order" do
    assert_difference('TOrder.count', -1) do
      delete t_order_url(@t_order)
    end

    assert_redirected_to t_orders_url
  end
end
