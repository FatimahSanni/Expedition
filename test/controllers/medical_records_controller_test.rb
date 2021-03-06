require 'test_helper'

class MedicalRecordsControllerTest < ActionController::TestCase
  setup do
    @medical_record = medical_records(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:medical_records)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create medical_record" do
    assert_difference('MedicalRecord.count') do
      post :create, medical_record: { booked: @medical_record.booked, complaints: @medical_record.complaints, diagnosis_id: @medical_record.diagnosis_id, eye: @medical_record.eye, pre_lva: @medical_record.pre_lva, pre_rva: @medical_record.pre_rva, treatment_id: @medical_record.treatment_id }
    end

    assert_redirected_to medical_record_path(assigns(:medical_record))
  end

  test "should show medical_record" do
    get :show, id: @medical_record
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @medical_record
    assert_response :success
  end

  test "should update medical_record" do
    patch :update, id: @medical_record, medical_record: { booked: @medical_record.booked, complaints: @medical_record.complaints, diagnosis_id: @medical_record.diagnosis_id, eye: @medical_record.eye, pre_lva: @medical_record.pre_lva, pre_rva: @medical_record.pre_rva, treatment_id: @medical_record.treatment_id }
    assert_redirected_to medical_record_path(assigns(:medical_record))
  end

  test "should destroy medical_record" do
    assert_difference('MedicalRecord.count', -1) do
      delete :destroy, id: @medical_record
    end

    assert_redirected_to medical_records_path
  end
end
