require "application_system_test_case"

class EvVenuesTest < ApplicationSystemTestCase
  setup do
    @ev_venue = ev_venues(:one)
  end

  test "visiting the index" do
    visit ev_venues_url
    assert_selector "h1", text: "Ev Venues"
  end

  test "creating a Ev venue" do
    visit ev_venues_url
    click_on "New Ev Venue"

    fill_in "Address", with: @ev_venue.address
    fill_in "Capacity", with: @ev_venue.capacity
    fill_in "Name", with: @ev_venue.name
    click_on "Create Ev venue"

    assert_text "Ev venue was successfully created"
    click_on "Back"
  end

  test "updating a Ev venue" do
    visit ev_venues_url
    click_on "Edit", match: :first

    fill_in "Address", with: @ev_venue.address
    fill_in "Capacity", with: @ev_venue.capacity
    fill_in "Name", with: @ev_venue.name
    click_on "Update Ev venue"

    assert_text "Ev venue was successfully updated"
    click_on "Back"
  end

  test "destroying a Ev venue" do
    visit ev_venues_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ev venue was successfully destroyed"
  end
end
