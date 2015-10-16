require 'test_helper'

class SurgicalsControllerTest < ActionController::TestCase
  setup do
    @surgical = surgicals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:surgicals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create surgical" do
    assert_difference('Surgical.count') do
      post :create, surgical: { average_k: @surgical.average_k, axial_length: @surgical.axial_length, complication_id: @surgical.complication_id, eye: @surgical.eye, iol_insertion_id: @surgical.iol_insertion_id, iol_power_id: @surgical.iol_power_id, surgery_date: @surgical.surgery_date, surgery_id: @surgical.surgery_id }
    end

    assert_redirected_to surgical_path(assigns(:surgical))
  end

  test "should show surgical" do
    get :show, id: @surgical
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @surgical
    assert_response :success
  end

  test "should update surgical" do
    patch :update, id: @surgical, surgical: { average_k: @surgical.average_k, axial_length: @surgical.axial_length, complication_id: @surgical.complication_id, eye: @surgical.eye, iol_insertion_id: @surgical.iol_insertion_id, iol_power_id: @surgical.iol_power_id, surgery_date: @surgical.surgery_date, surgery_id: @surgical.surgery_id }
    assert_redirected_to surgical_path(assigns(:surgical))
  end

  test "should destroy surgical" do
    assert_difference('Surgical.count', -1) do
      delete :destroy, id: @surgical
    end

    assert_redirected_to surgicals_path
  end
end
