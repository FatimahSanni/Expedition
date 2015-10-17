class MedicalRecord < ActiveRecord::Base
  belongs_to :diagnosis
  belongs_to :treatment
  belongs_to :patient
  validates :complaints, :pre_rva, :pre_lva, :diagnosis_id, :eye, :treatment_id, :patient_id, presence: true

  def self.to_csv
    attributes = %w{patient gender created_at}

    CSV.generate(headers: true) do |csv|
      csv << attributes

      all.each do |medical_record|
        csv <<  [medical_record.patient.full_name, medical_record.patient.gender, medical_record.patient.age, medical_record.pre_rva, medical_record.pre_lva, 
        	medical_record.diagnosis.name, medical_record.eye, medical_record.treatment.name, medical_record.complaints, medical_record.booked]
      end
    end
  end
end
