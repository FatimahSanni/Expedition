class Patient < ActiveRecord::Base
  has_many :surgicals, dependent: :destroy
  has_many :medical_records, dependent: :destroy
  validates :first_name, :surname, :age, :gender, :state, :intervention_state, presence: true
  Gender = %w(Male Female)

  def self.to_csv
    attributes = %w{Name Gender Age Phone State Lga Town Intervention\ State Date\ of\ Registration}

    CSV.generate(headers: true) do |csv|
      csv << attributes

      all.each do |patient|
        csv << [patient.full_name, patient.gender, patient.age, patient.phone, patient.state, patient.lga, patient.town, patient.intervention_state, patient.created_at]
      end
    end
  end

  def full_name
  	self.first_name+ " "+ self.other_names + " " + self.surname
  end
end
