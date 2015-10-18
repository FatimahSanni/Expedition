class AddPatientToMedicalRecords < ActiveRecord::Migration
  def change
    add_reference :medical_records, :patient, index: true, foreign_key: true
  end
end
