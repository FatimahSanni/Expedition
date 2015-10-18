class AddPatientAndDiagnosisAndTreatmentToMedicalRecords < ActiveRecord::Migration
  def change
    add_column :medical_records, :patient, :string
    add_column :medical_records, :diagnosis, :string
    add_column :medical_records, :treatment, :string
  end
end
