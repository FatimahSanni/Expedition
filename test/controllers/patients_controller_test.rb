require 'test_helper'

class PatientsControllerTest < ActionController::TestCase
  setup do
    @patient = patients(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:patients)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create patient" do
    assert_difference('Patient.count') do
      post :create, patient: { address: @patient.address, age: @patient.age, complaints: @patient.complaints, first_name: @patient.first_name, gender: @patient.gender, intervention_state: @patient.intervention_state, lga_id: @patient.lga_id, next_of_kin: @patient.next_of_kin, nok_address: @patient.nok_address, nok_phone: @patient.nok_phone, other_names: @patient.other_names, phone: @patient.phone, relationship: @patient.relationship, state_id: @patient.state_id, surname: @patient.surname }
    end

    assert_redirected_to patient_path(assigns(:patient))
  end

  test "should show patient" do
    get :show, id: @patient
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @patient
    assert_response :success
  end

  test "should update patient" do
    patch :update, id: @patient, patient: { address: @patient.address, age: @patient.age, complaints: @patient.complaints, first_name: @patient.first_name, gender: @patient.gender, intervention_state: @patient.intervention_state, lga_id: @patient.lga_id, next_of_kin: @patient.next_of_kin, nok_address: @patient.nok_address, nok_phone: @patient.nok_phone, other_names: @patient.other_names, phone: @patient.phone, relationship: @patient.relationship, state_id: @patient.state_id, surname: @patient.surname }
    assert_redirected_to patient_path(assigns(:patient))
  end

  test "should destroy patient" do
    assert_difference('Patient.count', -1) do
      delete :destroy, id: @patient
    end

    assert_redirected_to patients_path
  end
end
