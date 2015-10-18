class MedicalRecord < ActiveRecord::Base
  belongs_to  :patient
  validates :complaints, :pre_rva, :pre_lva, :diagnosis, :eye, :treatment, :patient, presence: true

  def self.to_csv
    attributes = %w{Patient Age Gender Complaints Pre_op\ VA(RE) Pre_op\ VA(LE) Diagnosis Eye Treatment Booked\ for\ Surgery Date}

    CSV.generate(headers: true) do |csv|
      csv << attributes

      all.each do |medical_record|
        csv <<  [medical_record.patient.full_name, medical_record.patient.age, medical_record.patient.gender, medical_record.complaints, medical_record.pre_rva, medical_record.pre_lva, medical_record.diagnosis, medical_record.eye, medical_record.treatment, medical_record.booked, medical_record.created_at]
      end
    end
  end
end
