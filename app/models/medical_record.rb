class MedicalRecord < ActiveRecord::Base
  belongs_to :diagnosis
  belongs_to :treatment
  validates :complaints, :pre_rva, :pre_lva, :diagnosis_id, :eye, :treatment_id, presence: true
end
