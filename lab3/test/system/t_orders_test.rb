require "application_system_test_case"

class TOrdersTest < ApplicationSystemTestCase
  setup do
    @t_order = t_orders(:one)
  end

  test "visiting the index" do
    visit t_orders_url
    assert_selector "h1", text: "T Orders"
  end

  test "creating a T order" do
    visit t_orders_url
    click_on "New T Order"

    fill_in "Price", with: @t_order.price
    click_on "Create T order"

    assert_text "T order was successfully created"
    click_on "Back"
  end

  test "updating a T order" do
    visit t_orders_url
    click_on "Edit", match: :first

    fill_in "Price", with: @t_order.price
    click_on "Update T order"

    assert_text "T order was successfully updated"
    click_on "Back"
  end

  test "destroying a T order" do
    visit t_orders_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "T order was successfully destroyed"
  end
end
