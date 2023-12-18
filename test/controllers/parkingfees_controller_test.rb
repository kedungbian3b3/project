require "test_helper"

class ParkingfeesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @parkingfee = parkingfees(:one)
  end

  test "should get index" do
    get parkingfees_url
    assert_response :success
  end

  test "should get new" do
    get new_parkingfee_url
    assert_response :success
  end

  test "should create parkingfee" do
    assert_difference("Parkingfee.count") do
      post parkingfees_url, params: { parkingfee: { money: @parkingfee.money, numtime: @parkingfee.numtime } }
    end

    assert_redirected_to parkingfee_url(Parkingfee.last)
  end

  test "should show parkingfee" do
    get parkingfee_url(@parkingfee)
    assert_response :success
  end

  test "should get edit" do
    get edit_parkingfee_url(@parkingfee)
    assert_response :success
  end

  test "should update parkingfee" do
    patch parkingfee_url(@parkingfee), params: { parkingfee: { money: @parkingfee.money, numtime: @parkingfee.numtime } }
    assert_redirected_to parkingfee_url(@parkingfee)
  end

  test "should destroy parkingfee" do
    assert_difference("Parkingfee.count", -1) do
      delete parkingfee_url(@parkingfee)
    end

    assert_redirected_to parkingfees_url
  end
end
