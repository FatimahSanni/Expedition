class Surgical < ActiveRecord::Base
  belongs_to :surgery
  belongs_to :iol_power
  belongs_to :iol_insertion
  belongs_to :complication
  belongs_to :patient
  belongs_to :surgeon
  validates :surgery_id, :eye, :patient_id, :surgeon_id, :post_rva, :post_lva, presence: true

  def self.to_csv
    attributes = %w{created_at}

    CSV.generate(headers: true) do |csv|
      csv << attributes

      all.each do |surgical|
        csv << [surgical.patient.name, surgical.patient.age, surgical.patient.gender]
      end
    end
  end
end
