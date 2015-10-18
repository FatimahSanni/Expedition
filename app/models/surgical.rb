class Surgical < ActiveRecord::Base
  belongs_to :patient
  validates :surgery, :eye, :patient, :surgeon, :post_rva, :post_lva, presence: true

  def self.to_csv
    attributes = %w{Patient Age Gender Surgery\ Date Surgery Surgeon Eye Average\ K Axial\ Length IOL\ Insertion IOL\ Power Post-Op\ VA(RE), Post-Op\ VA(LE) Complication}

    CSV.generate(headers: true) do |csv|
      csv << attributes

      all.each do |surgical|
        csv << [surgical.patient.full_name, surgical.patient.age, surgical.patient.gender, surgical.surgery_date, surgical.surgery, surgical.surgeon, surgical.eye, surgical.average_k, surgical.axial_length, surgical.iol_insertion, surgical.iol_power, surgical.post_rva, surgical.post_lva, surgical.complication]
      end
    end
  end
end
