require 'test_helper'

class IolPowersControllerTest < ActionController::TestCase
  setup do
    @iol_power = iol_powers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:iol_powers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create iol_power" do
    assert_difference('IolPower.count') do
      post :create, iol_power: { power: @iol_power.power }
    end

    assert_redirected_to iol_power_path(assigns(:iol_power))
  end

  test "should show iol_power" do
    get :show, id: @iol_power
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @iol_power
    assert_response :success
  end

  test "should update iol_power" do
    patch :update, id: @iol_power, iol_power: { power: @iol_power.power }
    assert_redirected_to iol_power_path(assigns(:iol_power))
  end

  test "should destroy iol_power" do
    assert_difference('IolPower.count', -1) do
      delete :destroy, id: @iol_power
    end

    assert_redirected_to iol_powers_path
  end
end
