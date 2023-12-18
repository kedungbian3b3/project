require "test_helper"

class ParkingstatusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @parkingstatus = parkingstatuses(:one)
  end

  test "should get index" do
    get parkingstatuses_url
    assert_response :success
  end

  test "should get new" do
    get new_parkingstatus_url
    assert_response :success
  end

  test "should create parkingstatus" do
    assert_difference("Parkingstatus.count") do
      post parkingstatuses_url, params: { parkingstatus: { available: @parkingstatus.available, car: @parkingstatus.car, customer_id: @parkingstatus.customer_id, date: @parkingstatus.date, numberplate: @parkingstatus.numberplate, parkingfee_id: @parkingstatus.parkingfee_id, paymentmethod_id: @parkingstatus.paymentmethod_id, slotid: @parkingstatus.slotid, staff_id: @parkingstatus.staff_id } }
    end

    assert_redirected_to parkingstatus_url(Parkingstatus.last)
  end

  test "should show parkingstatus" do
    get parkingstatus_url(@parkingstatus)
    assert_response :success
  end

  test "should get edit" do
    get edit_parkingstatus_url(@parkingstatus)
    assert_response :success
  end

  test "should update parkingstatus" do
    patch parkingstatus_url(@parkingstatus), params: { parkingstatus: { available: @parkingstatus.available, car: @parkingstatus.car, customer_id: @parkingstatus.customer_id, date: @parkingstatus.date, numberplate: @parkingstatus.numberplate, parkingfee_id: @parkingstatus.parkingfee_id, paymentmethod_id: @parkingstatus.paymentmethod_id, slotid: @parkingstatus.slotid, staff_id: @parkingstatus.staff_id } }
    assert_redirected_to parkingstatus_url(@parkingstatus)
  end

  test "should destroy parkingstatus" do
    assert_difference("Parkingstatus.count", -1) do
      delete parkingstatus_url(@parkingstatus)
    end

    assert_redirected_to parkingstatuses_url
  end
end
