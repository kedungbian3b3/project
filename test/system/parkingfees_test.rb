require "application_system_test_case"

class ParkingfeesTest < ApplicationSystemTestCase
  setup do
    @parkingfee = parkingfees(:one)
  end

  test "visiting the index" do
    visit parkingfees_url
    assert_selector "h1", text: "Parkingfees"
  end

  test "should create parkingfee" do
    visit parkingfees_url
    click_on "New parkingfee"

    fill_in "Money", with: @parkingfee.money
    fill_in "Numtime", with: @parkingfee.numtime
    click_on "Create Parkingfee"

    assert_text "Parkingfee was successfully created"
    click_on "Back"
  end

  test "should update Parkingfee" do
    visit parkingfee_url(@parkingfee)
    click_on "Edit this parkingfee", match: :first

    fill_in "Money", with: @parkingfee.money
    fill_in "Numtime", with: @parkingfee.numtime
    click_on "Update Parkingfee"

    assert_text "Parkingfee was successfully updated"
    click_on "Back"
  end

  test "should destroy Parkingfee" do
    visit parkingfee_url(@parkingfee)
    click_on "Destroy this parkingfee", match: :first

    assert_text "Parkingfee was successfully destroyed"
  end
end
