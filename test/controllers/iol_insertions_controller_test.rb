require 'test_helper'

class IolInsertionsControllerTest < ActionController::TestCase
  setup do
    @iol_insertion = iol_insertions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:iol_insertions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create iol_insertion" do
    assert_difference('IolInsertion.count') do
      post :create, iol_insertion: { name: @iol_insertion.name }
    end

    assert_redirected_to iol_insertion_path(assigns(:iol_insertion))
  end

  test "should show iol_insertion" do
    get :show, id: @iol_insertion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @iol_insertion
    assert_response :success
  end

  test "should update iol_insertion" do
    patch :update, id: @iol_insertion, iol_insertion: { name: @iol_insertion.name }
    assert_redirected_to iol_insertion_path(assigns(:iol_insertion))
  end

  test "should destroy iol_insertion" do
    assert_difference('IolInsertion.count', -1) do
      delete :destroy, id: @iol_insertion
    end

    assert_redirected_to iol_insertions_path
  end
end
