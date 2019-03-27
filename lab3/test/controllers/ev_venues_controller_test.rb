require 'test_helper'

class EvVenuesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ev_venue = ev_venues(:one)
  end

  test "should get index" do
    get ev_venues_url
    assert_response :success
  end

  test "should get new" do
    get new_ev_venue_url
    assert_response :success
  end

  test "should create ev_venue" do
    assert_difference('EvVenue.count') do
      post ev_venues_url, params: { ev_venue: { address: @ev_venue.address, capacity: @ev_venue.capacity, name: @ev_venue.name } }
    end

    assert_redirected_to ev_venue_url(EvVenue.last)
  end

  test "should show ev_venue" do
    get ev_venue_url(@ev_venue)
    assert_response :success
  end

  test "should get edit" do
    get edit_ev_venue_url(@ev_venue)
    assert_response :success
  end

  test "should update ev_venue" do
    patch ev_venue_url(@ev_venue), params: { ev_venue: { address: @ev_venue.address, capacity: @ev_venue.capacity, name: @ev_venue.name } }
    assert_redirected_to ev_venue_url(@ev_venue)
  end

  test "should destroy ev_venue" do
    assert_difference('EvVenue.count', -1) do
      delete ev_venue_url(@ev_venue)
    end

    assert_redirected_to ev_venues_url
  end
end
