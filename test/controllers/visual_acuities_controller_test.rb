require 'test_helper'

class VisualAcuitiesControllerTest < ActionController::TestCase
  setup do
    @visual_acuity = visual_acuities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:visual_acuities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create visual_acuity" do
    assert_difference('VisualAcuity.count') do
      post :create, visual_acuity: { va: @visual_acuity.va }
    end

    assert_redirected_to visual_acuity_path(assigns(:visual_acuity))
  end

  test "should show visual_acuity" do
    get :show, id: @visual_acuity
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @visual_acuity
    assert_response :success
  end

  test "should update visual_acuity" do
    patch :update, id: @visual_acuity, visual_acuity: { va: @visual_acuity.va }
    assert_redirected_to visual_acuity_path(assigns(:visual_acuity))
  end

  test "should destroy visual_acuity" do
    assert_difference('VisualAcuity.count', -1) do
      delete :destroy, id: @visual_acuity
    end

    assert_redirected_to visual_acuities_path
  end
end
