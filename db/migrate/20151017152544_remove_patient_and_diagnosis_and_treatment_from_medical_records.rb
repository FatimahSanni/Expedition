class RemovePatientAndDiagnosisAndTreatmentFromMedicalRecords < ActiveRecord::Migration
  def change
    remove_reference :medical_records, :patient, index: true, foreign_key: true
    remove_reference :medical_records, :diagnosis, index: true, foreign_key: true
    remove_reference :medical_records, :treatment, index: true, foreign_key: true
  end
end
