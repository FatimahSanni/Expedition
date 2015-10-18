class RemovePatientFromMedicalRecords < ActiveRecord::Migration
  def change
    remove_column :medical_records, :patient, :string
  end
end
