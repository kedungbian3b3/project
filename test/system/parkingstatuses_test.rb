require "application_system_test_case"

class ParkingstatusesTest < ApplicationSystemTestCase
  setup do
    @parkingstatus = parkingstatuses(:one)
  end

  test "visiting the index" do
    visit parkingstatuses_url
    assert_selector "h1", text: "Parkingstatuses"
  end

  test "should create parkingstatus" do
    visit parkingstatuses_url
    click_on "New parkingstatus"

    check "Available" if @parkingstatus.available
    fill_in "Car", with: @parkingstatus.car
    fill_in "Customer", with: @parkingstatus.customer_id
    fill_in "Date", with: @parkingstatus.date
    fill_in "Numberplate", with: @parkingstatus.numberplate
    fill_in "Parkingfee", with: @parkingstatus.parkingfee_id
    fill_in "Paymentmethod", with: @parkingstatus.paymentmethod_id
    fill_in "Slotid", with: @parkingstatus.slotid
    fill_in "Staff", with: @parkingstatus.staff_id
    click_on "Create Parkingstatus"

    assert_text "Parkingstatus was successfully created"
    click_on "Back"
  end

  test "should update Parkingstatus" do
    visit parkingstatus_url(@parkingstatus)
    click_on "Edit this parkingstatus", match: :first

    check "Available" if @parkingstatus.available
    fill_in "Car", with: @parkingstatus.car
    fill_in "Customer", with: @parkingstatus.customer_id
    fill_in "Date", with: @parkingstatus.date
    fill_in "Numberplate", with: @parkingstatus.numberplate
    fill_in "Parkingfee", with: @parkingstatus.parkingfee_id
    fill_in "Paymentmethod", with: @parkingstatus.paymentmethod_id
    fill_in "Slotid", with: @parkingstatus.slotid
    fill_in "Staff", with: @parkingstatus.staff_id
    click_on "Update Parkingstatus"

    assert_text "Parkingstatus was successfully updated"
    click_on "Back"
  end

  test "should destroy Parkingstatus" do
    visit parkingstatus_url(@parkingstatus)
    click_on "Destroy this parkingstatus", match: :first

    assert_text "Parkingstatus was successfully destroyed"
  end
end
