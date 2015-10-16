require 'test_helper'

class SurgeonsControllerTest < ActionController::TestCase
  setup do
    @surgeon = surgeons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:surgeons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create surgeon" do
    assert_difference('Surgeon.count') do
      post :create, surgeon: { name: @surgeon.name }
    end

    assert_redirected_to surgeon_path(assigns(:surgeon))
  end

  test "should show surgeon" do
    get :show, id: @surgeon
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @surgeon
    assert_response :success
  end

  test "should update surgeon" do
    patch :update, id: @surgeon, surgeon: { name: @surgeon.name }
    assert_redirected_to surgeon_path(assigns(:surgeon))
  end

  test "should destroy surgeon" do
    assert_difference('Surgeon.count', -1) do
      delete :destroy, id: @surgeon
    end

    assert_redirected_to surgeons_path
  end
end
